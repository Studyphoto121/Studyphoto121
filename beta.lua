-- VAMPX BETA 1.0 - CLEAN REWRITE UI + ESP + CAMLOCK
-- All-in-one Visuals + Speed Macro + Camlock Keybind

-- // SERVICES
local Players, RunService, UserInputService, Camera = game:GetService("Players"), game:GetService("RunService"), game:GetService("UserInputService"), workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- // GLOBAL SETTINGS
_G.VAMPX = {
    ESPVisible = false,
    ShowName = false,
    ShowDistance = false,
    ShowHealth = false,
    TeamCheck = false,
    TextColor = Color3.fromRGB(255, 255, 255),
    Outline = false,
    OutlineColor = Color3.fromRGB(0, 0, 0),
    TextSize = 14,
    Center = true,
    TextTransparency = 0.75,
    TextFont = Drawing.Fonts.UI,
    Camlock = false,
    CamlockMode = "Toggle",
    CamlockKey = Enum.KeyCode.C,
    FOVVisible = false,
    FOVRadius = 90,
    AimPart = "Head",
    Prediction = 0.165,
    Smoothness = 0.05,
    WalkSpeed = 16,
    SpeedKey = Enum.KeyCode.LeftShift,
    SpeedMode = "Hold",
    Slippery = false,
    SpeedState = false,
    NoRecoil = false,
    NoCameraBob = false,
    BHOP = false
}

-- // UI
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Splix"))()
local window = library:new({textsize = 13.5, font = Enum.Font.RobotoMono, name = "VAMPX BETA 1.0", color = Color3.fromRGB(255, 0, 255)})
local legit = window:page({name = "Legit"})
local visualTab = window:page({name = "Visual"})
local character = window:page({name = "Character"})
local misc = window:page({name = "Misc"})
local setting = window:page({name = "Setting"})

-- // FOV CIRCLE
_G.VAMPX.FOVColor = Color3.fromRGB(255, 255, 255)
local fovCircle = Drawing.new("Circle")
fovCircle.Color = _G.VAMPX.FOVColor
fovCircle.Thickness = 1
fovCircle.NumSides = 100
fovCircle.Filled = false
RunService.RenderStepped:Connect(function()
    fovCircle.Visible = _G.VAMPX.FOVVisible
    fovCircle.Radius = _G.VAMPX.FOVRadius
    fovCircle.Color = _G.VAMPX.FOVColor
    fovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
end)

-- // GET CLOSEST PLAYER
local function GetClosest()
    local maxDist, target = _G.VAMPX.FOVRadius, nil
    for _, v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild(_G.VAMPX.AimPart) then
            if _G.VAMPX.TeamCheck and v.Team == LocalPlayer.Team then continue end
            local pos, onScreen = Camera:WorldToViewportPoint(v.Character[_G.VAMPX.AimPart].Position + v.Character[_G.VAMPX.AimPart].Velocity * _G.VAMPX.Prediction)
            if onScreen then
                local dist = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                if dist < maxDist then maxDist = dist target = v end
            end
        end
    end
    return target
end

-- // CAMLOCK
local lastTarget
RunService.RenderStepped:Connect(function()
    if _G.VAMPX.Camlock then
        local target = GetClosest()
        if target and target.Character and target.Character:FindFirstChild(_G.VAMPX.AimPart) then
            local pos = target.Character[_G.VAMPX.AimPart].Position + target.Character[_G.VAMPX.AimPart].Velocity * _G.VAMPX.Prediction
            Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, pos), _G.VAMPX.Smoothness)
            if lastTarget ~= target then
                lastTarget = target
                library:notify("Locked on: " .. target.Name)
            end
        end
    end
end)

-- // CAMLOCK KEY
UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == _G.VAMPX.CamlockKey then
        if _G.VAMPX.CamlockMode == "Toggle" then
            _G.VAMPX.Camlock = not _G.VAMPX.Camlock
        elseif _G.VAMPX.CamlockMode == "Hold" then
            _G.VAMPX.Camlock = true
        end
    end
end)
UserInputService.InputEnded:Connect(function(input, processed)
    if not processed and input.KeyCode == _G.VAMPX.CamlockKey and _G.VAMPX.CamlockMode == "Hold" then
        _G.VAMPX.Camlock = false
    end
end)

-- // LEGIT UI
local legitSection = legit:section({name = "Aimbot", side = "left", size = 400})
legitSection:colorpicker({name = "FOV Color", default = _G.VAMPX.FOVColor, callback = function(c) _G.VAMPX.FOVColor = c end})
legitSection:toggle({name = "Camlock", def = false, callback = function(v) _G.VAMPX.Camlock = v end})
legitSection:toggle({name = "Show FOV", def = true, callback = function(v) _G.VAMPX.FOVVisible = v end})
legitSection:slider({name = "FOV Radius", min = 10, max = 300, def = 90, rounding = true, callback = function(v) _G.VAMPX.FOVRadius = v end})
legitSection:dropdown({name = "AimPart", def = "Head", options = {"Head", "UpperTorso", "HumanoidRootPart"}, callback = function(v) _G.VAMPX.AimPart = v end})
legitSection:textbox({name = "Prediction", def = tostring(_G.VAMPX.Prediction), callback = function(v)
    local num = tonumber(v)
    if num then _G.VAMPX.Prediction = num end
end})
legitSection:textbox({name = "Smoothness", def = tostring(_G.VAMPX.Smoothness), callback = function(v)
    local num = tonumber(v)
    if num then _G.VAMPX.Smoothness = num end
end})
legitSection:toggle({name = "Team Check", def = false, callback = function(v) _G.VAMPX.TeamCheck = v end})
legitSection:dropdown({name = "Camlock Mode", def = "Toggle", options = {"Toggle", "Hold"}, callback = function(v) _G.VAMPX.CamlockMode = v end})
legitSection:keybind({name = "Set Camlock Key", def = _G.VAMPX.CamlockKey, callback = function(key) _G.VAMPX.CamlockKey = key end})

-- // CHARACTER UI
local charSection = character:section({name = "Speed", side = "left", size = 170})
charSection:keybind({name = "Set Speed Key", def = _G.VAMPX.SpeedKey, callback = function(key)
    _G.VAMPX.SpeedKey = key
end})
charSection:slider({name = "WalkSpeed", min = 10, max = 1000, def = 16, callback = function(v) _G.VAMPX.WalkSpeed = v end})
charSection:dropdown({name = "Speed Mode", def = "Hold", options = {"Hold", "Toggle"}, callback = function(v) _G.VAMPX.SpeedMode = v end})
charSection:toggle({name = "Slippery Macro (DaHood)", def = false, callback = function(v) _G.VAMPX.Slippery = v end})

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == _G.VAMPX.SpeedKey then
        if _G.VAMPX.SpeedMode == "Toggle" then
            _G.VAMPX.SpeedState = not _G.VAMPX.SpeedState
        elseif _G.VAMPX.SpeedMode == "Hold" then
            _G.VAMPX.SpeedState = true
        end
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == _G.VAMPX.SpeedKey and _G.VAMPX.SpeedMode == "Hold" then
        _G.VAMPX.SpeedState = false
    end
end)
RunService.RenderStepped:Connect(function()
    local char = LocalPlayer.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid.WalkSpeed = _G.VAMPX.SpeedState and _G.VAMPX.WalkSpeed or 16
        char.Humanoid.AutoRotate = not _G.VAMPX.Slippery
    end
end)

-- // MISC UI
local miscSection = misc:section({name = "Misc", side = "left", size = 100})
miscSection:toggle({name = "NoRecoil", def = false, callback = function(v) _G.VAMPX.NoRecoil = v end})
miscSection:toggle({name = "NoCameraBob", def = false, callback = function(v) _G.VAMPX.NoCameraBob = v end})
miscSection:toggle({name = "BHOP", def = false, callback = function(v) _G.VAMPX.BHOP = v end})

-- // ESP SYSTEM
local ESPObjects = {}
local function CreateESP(player)
    local text = Drawing.new("Text")
    local cham = Instance.new("Highlight")
    cham.Name = "VAMPX_Highlight"
    cham.FillColor = _G.VAMPX.TextColor
    cham.OutlineColor = _G.VAMPX.OutlineColor
    cham.FillTransparency = 0.5
    cham.OutlineTransparency = 0
    cham.Enabled = false
    cham.Parent = player.Character or player.CharacterAdded:Wait()

    ESPObjects[player] = {text = text, cham = cham}

    RunService.RenderStepped:Connect(function()
        local char = player.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") or not char:FindFirstChild("Head") then
            text.Visible = false
            cham.Enabled = false
            return
        end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        local head = char:FindFirstChild("Head")
        local pos, onScreen = Camera:WorldToViewportPoint(head.Position)
        if not onScreen or not _G.VAMPX.ESPVisible then
            text.Visible = false
            cham.Enabled = false
            return
        end

        if _G.VAMPX.TeamCheck and player.Team == LocalPlayer.Team then
            text.Visible = false
            cham.Enabled = false
            return
        end

        local distance = (hrp.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local health = char:FindFirstChildOfClass("Humanoid") and math.floor(char:FindFirstChildOfClass("Humanoid").Health) or 0

        text.Visible = true
        text.Text = (_G.VAMPX.ShowDistance and "("..math.floor(distance)..") " or "") .. (_G.VAMPX.ShowName and player.Name or "") .. (_G.VAMPX.ShowHealth and " ["..health.."]" or "")
        text.Size = _G.VAMPX.TextSize
        text.Center = _G.VAMPX.Center
        text.Outline = _G.VAMPX.Outline
        text.OutlineColor = _G.VAMPX.OutlineColor
        text.Color = _G.VAMPX.TextColor
        text.Transparency = _G.VAMPX.TextTransparency
        text.Font = _G.VAMPX.TextFont
        text.Position = Vector2.new(pos.X, pos.Y - 25)

        cham.Enabled = _G.VAMPX.ShowChams
        cham.Adornee = char
        cham.FillColor = _G.VAMPX.TextColor
        cham.OutlineColor = _G.VAMPX.OutlineColor
    end)
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        if player.Character then CreateESP(player) end
        player.CharacterAdded:Connect(function() task.wait(1); CreateESP(player) end)
    end
end
Players.PlayerAdded:Connect(function(player)
    if player ~= LocalPlayer then
        player.CharacterAdded:Connect(function() task.wait(1); CreateESP(player) end)
    end
end)

-- // VISUAL UI
_G.VAMPX.ShowBox = true
_G.VAMPX.ShowTracer = true
_G.VAMPX.ShowChams = false
_G.VAMPX.ShowHealthBar = false
local visual = visualTab:section({name = "ESP", side = "left", size = 400})
visual:toggle({name = "Enable ESP", def = _G.VAMPX.ESPVisible, callback = function(v) _G.VAMPX.ESPVisible = v end})
visual:toggle({name = "Team Check", def = _G.VAMPX.TeamCheck, callback = function(v) _G.VAMPX.TeamCheck = v end})
visual:toggle({name = "Show Name", def = _G.VAMPX.ShowName, callback = function(v) _G.VAMPX.ShowName = v end})
visual:toggle({name = "Show Distance", def = _G.VAMPX.ShowDistance, callback = function(v) _G.VAMPX.ShowDistance = v end})
visual:toggle({name = "Show Health", def = _G.VAMPX.ShowHealth, callback = function(v) _G.VAMPX.ShowHealth = v end})
visual:toggle({name = "Show Chams", def = _G.VAMPX.ShowChams, callback = function(v) _G.VAMPX.ShowChams = v end})
visual:toggle({name = "Show Health Bar (Buggy)", def = _G.VAMPX.ShowHealthBar, callback = function(v) _G.VAMPX.ShowHealthBar = v end})
visual:toggle({name = "Outline", def = _G.VAMPX.Outline, callback = function(v) _G.VAMPX.Outline = v end})
visual:colorpicker({name = "Text Color", default = _G.VAMPX.TextColor, callback = function(c) _G.VAMPX.TextColor = c end})
visual:colorpicker({name = "Outline Color", default = _G.VAMPX.OutlineColor, callback = function(c) _G.VAMPX.OutlineColor = c end})
visual:slider({name = "Text Size", def = _G.VAMPX.TextSize, min = 10, max = 30, rounding = true, callback = function(v) _G.VAMPX.TextSize = v end})

-- Extra Visual Toggles

-- // SETTING UI
local settingSection = setting:section({name = "Keybinds", side = "left", size = 100})
settingSection:keybind({name = "Set UI Keybind", def = nil, callback = function(key)
    window.key = key
end})

local camlockLabel = settingSection:label("Camlock: OFF")
RunService.RenderStepped:Connect(function()
    camlockLabel:update("Camlock: " .. (_G.VAMPX.Camlock and "ON" or "OFF"))
end)
