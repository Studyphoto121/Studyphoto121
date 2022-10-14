_G.Configuration = {
   Tracers = true,
   PlayerInfo = true,
   Outlines = true,
   ShowAllyTeam = true,
   UseTeamColor = true
}

local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")

local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local DrawedPlayers = {}

local Vector2 = Vector2.new
local RGB = Color3.fromRGB

local function CreateDrawing(object, properties)
   local Object = Drawing.new(object)

   for i, v in pairs(properties) do
       Object[i] = v
   end
   
   return Object
end

local function AddVisuals(player)
   if DrawedPlayers[player.Name] then return end

   DrawedPlayers[player.Name] = {
       Player = player,
       Info = CreateDrawing("Text", {Text = "", Center = true, Outline = true, Size = 16, Transparency = 1, Position = Vector2(0, 0), Color = RGB(255, 255, 255), Visible = false}),
       TracerOutline = CreateDrawing("Line", {Transparency = 1, Thickness = 1.5, From = Vector2(0, 0), To = Vector2(0, 0), Color = RGB(0, 0, 0), Visible = false}),
       Tracer = CreateDrawing("Line", {Transparency = 1, Thickness = 1.5, From = Vector2(0, 0), To = Vector2(0, 0), Color = RGB(255, 255, 255), Visible = false}),
   }
end

local function IsOnTeam(player)
   if LocalPlayer.TeamColor.Color == player.TeamColor.Color then
       return true
   else
       return false
   end
end

local function SetVisuals(table, type, value) --// ugh this is so bad, stupid outlines
   if type == "Color" then
       table.Tracer.Color = value
   elseif type == "Visibility" then
       for i, v in pairs(table) do
           if tostring(i) ~= "Player" then
               v.Visible = value
           end
       end
   end
end

for i, v in pairs(Players:GetPlayers()) do
   if v ~= LocalPlayer then
       AddVisuals(v)
   end
end

Players.PlayerAdded:Connect(function(player)
   AddVisuals(player)
end)

Players.PlayerRemoving:Connect(function(player)
   for i, v in pairs(DrawedPlayers[player.Name]) do
       wait()
       v:Remove()
   end

   wait()
   DrawedPlayers[player.Name] = nil
end)

RunService:BindToRenderStep("Universal", 500, function()
   for i, v in pairs(Players:GetPlayers()) do
       if v ~= LocalPlayer then
           local Player = v
           local DrawedPlayer = DrawedPlayers[Player.Name]

           if DrawedPlayer then
               local Drawings = {
                   Info = DrawedPlayer.Info,
                   Tracer = DrawedPlayer.Tracer,
                   TracerOutline = DrawedPlayer.TracerOutline,
               }
               
               if Player then
                   local LocalCharacter = LocalPlayer.Character
                   local Character = Player.Character

                   if LocalCharacter and Character then
                       local LocalPlayerHumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
                       local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

                       if LocalPlayerHumanoidRootPart and HumanoidRootPart then
                           local HumanoidRootPartPosition, PlayerOnScreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)

                           Drawings.Info.Text = Player.Name
                           Drawings.Info.Position = Vector2(HumanoidRootPartPosition.X, (HumanoidRootPartPosition.Y - (6000 / HumanoidRootPartPosition.Z) / 2) - 20)
                           Drawings.Info.Outline = _G.Configuration.Outlines

                           Drawings.Tracer.From = Vector2(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                           Drawings.Tracer.To = Vector2(HumanoidRootPartPosition.X, HumanoidRootPartPosition.Y)
                           
                           Drawings.TracerOutline.Thickness = (Drawings.Tracer.Thickness * 2)
                           Drawings.TracerOutline.From = Drawings.Tracer.From
                           Drawings.TracerOutline.To = Drawings.Tracer.To
                           

                           if _G.Configuration.UseTeamColor then
                               SetVisuals(Drawings, "Color", Player.TeamColor.Color)
                           else
                               SetVisuals(Drawings, "Color", RGB(255, 255, 255))
                           end

                           Drawings.Info.Visible = _G.Configuration.PlayerInfo
                           Drawings.Tracer.Visible = _G.Configuration.Tracers
                           Drawings.TracerOutline.Visible = _G.Configuration.Outlines

                           if _G.Configuration.ShowAllyTeam then
                               SetVisuals(Drawings, "Visibility", true)
                           else
                               if IsOnTeam(Player) then
                                   SetVisuals(Drawings, "Visibility", false)
                               else
                                   SetVisuals(Drawings, "Visibility", true)
                               end
                           end
                           
                           if not PlayerOnScreen then
                               SetVisuals(Drawings, "Visibility", false)
                           end
                       else
                           SetVisuals(Drawings, "Visibility", false)
                       end
                   else
                       SetVisuals(Drawings, "Visibility", false)
                   end
               else
                   SetVisuals(Drawings, "Visibility", false)
               end
           end
       end
   end
end)
