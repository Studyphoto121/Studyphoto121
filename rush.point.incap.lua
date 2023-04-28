_G.TeamCheck = true
_G.NoCameraBob = false
_G.SilentAim = false
_G.NoRecoil = false
_G.BHOP = false
_G.WalkSpeedToggle = false
_G.WalkSpeed = 15
_G.tc = 255, 10, 20
_G.ec = 255, 0, 0

local function GetModule(Fake)
    local __index = getrawmetatable(Fake).__index
    return getupvalue(__index, 1)
end

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local Client = Modules:WaitForChild("Client")
local Shared = Modules:WaitForChild("Shared")

local Network = require(Shared.Network)
Network = GetModule(Network)

local Memory = require(Shared.SharedMemory)

local Characters = workspace.MapFolder.Players

local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local PermanentTeam = plr.PermanentTeam
local MyTeam = PermanentTeam.Value
PermanentTeam:GetPropertyChangedSignal("Value"):Connect(function(v)
    MyTeam = v
end)

local function IsOnTeam(Player)
    return Players[Player.Name].PermanentTeam.Value == MyTeam 
end

local Camera = workspace.CurrentCamera

--restorefunction(Network.FireServer)
local nc; nc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    if _G.SilentAim and args[1] == "FireBullet" and getnamecallmethod() == "FireServer" then
        local MyHRP = Characters[plr.Name].HumanoidRootPart

        local BulletData = args[2][1]
        local Weapon = Memory.CurrentWeapon
        local Muzzle = Weapon.Object.Muzzle
        local MuzzlePos = Muzzle.Position

        local ClosestHead
        local Closest_Magnitude = 9e9
        
        local Raycastparams = RaycastParams.new()
        Raycastparams.FilterType = Enum.RaycastFilterType.Blacklist
        Raycastparams.FilterDescendantsInstances = {Characters[plr.Name]}
        
        local CameraPos = Camera.CFrame.Position
        for _, v in next, Characters.GetChildren(Characters) do
            local TheirHead = v.FindFirstChild(v, "Head")
            if v.Name ~= plr.Name and TheirHead then
                if _G.TeamCheck and IsOnTeam(v) then
                    continue
                end

                local raycastParams = RaycastParams.new()
                raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
                raycastParams.FilterDescendantsInstances = {Characters[plr.Name], Camera}

                local RaycastResult = workspace.Raycast(workspace, CameraPos, TheirHead.Position - CameraPos, raycastParams)
                if RaycastResult and RaycastResult.Instance.Parent.Name == v.Name then
                    local Distance = (TheirHead.Position - MyHRP.Position).Magnitude
                    if Distance < Closest_Magnitude then
                        Closest_Magnitude = Distance
                        ClosestHead = TheirHead
                    end
                end
            end
        end
        
        if not ClosestHead then
            return nc(self, ...)
        end

        local EnemyHeadPos = ClosestHead.Position
        local NewBulletCFrame = CFrame.new(MuzzlePos, EnemyHeadPos)
        local NewOriginCFrame = CFrame.new(CameraPos, EnemyHeadPos)
        
        BulletData.BulletCFrame = NewBulletCFrame
        BulletData.OriginCFrame = NewOriginCFrame

        return nc(self, unpack(args))
    end

    return nc(self, ...)
end)

local RecoilHandler = require(Client.Helpers.RecoilHandler)
RecoilHandler = GetModule(RecoilHandler)
local a; a = hookfunction(RecoilHandler.AddRecoil, function(...) 
    if _G.NoRecoil then
        return
    end
    
    return a(...)
end)

local CameraModule = require(Client.Managers.CameraModule)
local old; old = hookfunction(CameraModule.AddCameraBounce, function(...) 
    if _G.NoCameraBob then
        return
    end
    
    return old(...)
end)

local plr = game.Players.LocalPlayer
local Character = plr.Character or plr.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local uis = game:GetService("UserInputService")

local Space = Enum.KeyCode.Space
local Jumping = Enum.HumanoidStateType.Jumping
local function SetupBhop(character)
    if character then
        Humanoid = character:WaitForChild("Humanoid")
    end

    Humanoid.StateChanged:Connect(function(old, new)
        if not _G.BHOP then
            return    
        end
        
        if new == Enum.HumanoidStateType.Landed and uis:IsKeyDown(Space) then
            Humanoid:ChangeState(Jumping)
        end
    end)
end

SetupBhop()
plr.CharacterAdded:Connect(SetupBhop)

local idx; idx = hookmetamethod(game, "__newindex", function(self, i, v)
    if i == "WalkSpeed" and _G.WalkSpeedToggle then
        v = _G.WalkSpeed
    end

    return idx(self, i, v)
end)

if not ESP then
    getgenv().ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/noobscripter38493/kiriot-esp/main/ESP.lua"))()

    ESP.Tracers = true
    ESP:Toggle(false)

    TeamColor = Color3.fromRGB(_G.tc)
    EnemyColor = Color3.fromRGB(_G.ec)

    local function AddPlayerToESP(Player)
        if Player.Name ~= plr.Name and Player:FindFirstChild("HumanoidRootPart") then
            if IsOnTeam(Players[Player.Name]) then
                Color = Color3.fromRGB(TeamColor)
            else
                Color = Color3.fromRGB(EnemyColor)
            end

            ESP:Add(Player, {Color = Color})
        end
    end
    
    for _, v in next, Characters:GetChildren() do
        AddPlayerToESP(v)
    end

    Characters.ChildAdded:Connect(AddPlayerToESP)
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Splix"))()

local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "Incap.Rushpoint Beta",color = Color3.fromRGB(225,58,81)})

local tab = window:page({name = "Legit"})

local section1 = tab:section({name = "Aimbot",side = "left",size = 100})

local section2 = tab:section({name = "Misc",side = "right",size = 75})

section2:toggle({name = "NoRecoil",def = false,callback = function(v)
  _G.NoRecoil = v
end})

section2:toggle({name = "NoCameraBob",def = false,callback = function(v)
    _G.NoCameraBob = v
  end})

section1:toggle({name = "SlientAim",def = false,callback = function(v)
  _G.SilentAim = v
end})

section1:toggle({name = "TeamCheck",def = true,callback = function(v)
  _G.TeamCheck = v
end})

section1:dropdown({name = "Aimpart",def = "",max = 10,options = {"Head"},callback = function(chosen)
    print(chosen)
 end})

local tab = window:page({name = "Misc"})

local section3 = tab:section({name = "Speed",side = "left",size = 75})

local section4 = tab:section({name = "Bhop",side = "right",size = 50})

local section6 = tab:section({name = "ThirdPerson",side = "right",size = 50})

section3:toggle({name = "WalkSpeed",def = false,callback = function(v)
    _G.WalkSpeedToggle = v
  end})

section3:slider({name = "speed",def = 15, max = 30,min = 1,rounding = true,ticking = false,measuring = "",callback = function(v)
    _G.WalkSpeed = v
end})

section4:toggle({name = "Bhop",def = false,callback = function(v)
    _G.BHOP = v
  end})

section6:toggle({name = "ThirdPerson (HandBug)",def = false,callback = function(v)
    if v == true then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/thdp.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Studyphoto121/Studyphoto121/main/unthrdp.lua"))()
    end
  end})

local tab = window:page({name = "Visual"})

local section5 = tab:section({name = "Esp",side = "left",size = 100})

section5:toggle({name = "Esp",def = false,callback = function(v)
    ESP:Toggle(v)
  end})

section5:toggle({name = "Box",def = false,callback = function(v)
  ESP.Boxes = v
end})

section5:toggle({name = "Name",def = false,callback = function(v)
    ESP.Names = v
end})

section5:toggle({name = "Tracers",def = false,callback = function(v)
    ESP.Tracers = v
end})