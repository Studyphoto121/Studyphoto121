-- ModuleScript (ใส่ใน ReplicatedStorage หรืออื่น ๆ)
local Watermark = {}

function Watermark.Create()
	local gui = Instance.new("ScreenGui")
	gui.Name = "Watermark"
	gui.ResetOnSpawn = false
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = game:GetService("CoreGui")

	-- Main container
	local frame = Instance.new("Frame")
	frame.Name = "Main"
	frame.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
	frame.Size = UDim2.new(0, 220, 0, 34)
	frame.Position = UDim2.new(0.015, 0, 0.02, 0)
	frame.AnchorPoint = Vector2.new(0, 0)
	frame.Active = true
	frame.Draggable = true
	frame.ZIndex = 1
	frame.Parent = gui

	-- Glow Aura Layer
	local aura = Instance.new("ImageLabel")
	aura.Name = "AuraGlow"
	aura.BackgroundTransparency = 1
	aura.Image = "rbxassetid://5028857084"
	aura.ImageColor3 = Color3.fromRGB(213, 244, 245)
	aura.ImageTransparency = 0.30
	aura.ScaleType = Enum.ScaleType.Slice
	aura.SliceCenter = Rect.new(24, 24, 276, 276)
	aura.Size = UDim2.new(1, 30, 1, 30)
	aura.Position = UDim2.new(0, -15, 0, -15)
	aura.ZIndex = 0
	aura.Parent = frame

	-- Gradient background
	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0.0, Color3.fromRGB(30, 30, 30)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(44, 62, 80)),
		ColorSequenceKeypoint.new(1.0, Color3.fromRGB(80, 60, 100))
	})
	gradient.Rotation = 0
	gradient.Parent = frame

	-- Text
	local label = Instance.new("TextLabel")
	label.Name = "Text"
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.Font = Enum.Font.SourceSans
	label.TextSize = 12
	label.TextColor3 = Color3.fromRGB(220, 220, 220)
	label.TextXAlignment = Enum.TextXAlignment.Center
	label.TextYAlignment = Enum.TextYAlignment.Center
	label.Text = ""
	label.ZIndex = 2
	label.Parent = frame

	local stroke = Instance.new("UIStroke")
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	stroke.Color = Color3.fromRGB(0, 0, 0)
	stroke.Thickness = 1
	stroke.Transparency = 0
	stroke.Parent = label

	-- Update text with timestamp
	local TextService = game:GetService("TextService")
	local function updateText()
		local content = "EasyPezy.lol | v0.1 | " .. os.date("%b %d, %Y - %H:%M")
		label.Text = content
		local size = TextService:GetTextSize(content, label.TextSize, label.Font, Vector2.new(math.huge, 34))
		frame.Size = UDim2.new(0, size.X + 24, 0, 34)
	end

	task.spawn(function()
		while true do
			updateText()
			task.wait(1)
		end
	end)
end

return Watermark

local KeybindList = {}

local keybinds = {
	{ name = "auto equip", key = "B" },
	{ name = "defensive", key = "K" },
	{ name = "target select", key = "C" },
	{ name = "velocity", key = "U" },
	{ name = "follow target", key = "T" },
	{ name = "auto stomp", key = "N" },
	{ name = "auto armor", key = "M" },
	{ name = "auto ammo", key = "L" },
	{ name = "View Target", key = "Y" },
	{ name = "ESP", key = "P" },
	{ name = "fly", key = "X" },
	{ name = "speed", key = "Z" },
	{ name = "prediction", key = "V" },
}

function KeybindList.Create()
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "KeybindList"
	screenGui.ResetOnSpawn = false
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = game:GetService("CoreGui")

	local holder = Instance.new("Frame")
	holder.Name = "ListHolder"
	holder.Size = UDim2.new(0, 200, 0, #keybinds * 20 + 10)
	holder.Position = UDim2.new(1, -210, 0.3, 0)
	holder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	holder.BorderSizePixel = 0
	holder.BackgroundTransparency = 0.2
	holder.ZIndex = 5
	holder.Parent = screenGui

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Color = Color3.fromRGB(255, 255, 255)
	uiStroke.Thickness = 1
	uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiStroke.Parent = holder

	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.Padding = UDim.new(0, 2)
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Parent = holder

	for _, item in ipairs(keybinds) do
		local line = Instance.new("TextLabel")
		line.Size = UDim2.new(1, -10, 0, 18)
		line.BackgroundTransparency = 1
		line.TextXAlignment = Enum.TextXAlignment.Left
		line.Font = Enum.Font.Code
		line.TextSize = 14
		line.TextColor3 = Color3.fromRGB(220, 220, 220)
		line.Text = string.format(" %s [%s]", item.name, item.key)
		line.ZIndex = 6
		line.Parent = holder
	end
end

return KeybindList

