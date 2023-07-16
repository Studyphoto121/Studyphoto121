
setfpscap(1000)
game.StarterGui:SetCore("SendNotification", {
	Title = "Normal Hub",
	Text = "Loading",
	Icon = "rbxassetid://9844539279",
	Duration = 5,
})

repeat wait()
    pcall(function()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
            if _G.Teams == "Pirates" then
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Pirates"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            elseif _G.Teams == "Marines" then 
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Marines"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            else
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                local args = {
                    [1] = "SetTeam",
                    [2] = "Pirates"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = false
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Fragments.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Compass.Visible = true
                for i,v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main:GetChildren()) do
                    if v:IsA("ImageButton") then
                        if v.Name ~= "Settings_" then
                            if v.Visible == false then
                                v.Visible = true
                            end
                        end
                    end
                end
            end    
        end
    end)
until game:GetService("Players").LocalPlayer.Team ~= nil
repeat wait(3) until not abcededeed
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ImageButton.Parent = ScreenGui
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Image = "rbxassetid://11301155154"
ImageButton.Draggable = true
ImageButton.BackgroundTransparency = 1.000

ImageButton.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightControl",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"RightControl",false,game)
end)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = ImageButton
do
	local ui = game.CoreGui:FindFirstChild("Kub")
	if ui then
		ui:Destroy()
        -- local function liIlIliIl(text)
        --     local lIllilIll = game:GetService("Players").LocalPlayer
        --     lIllilIll:Kick(text)
        -- end
        -- liIlIliIl("\nDon't execute for 2 times")
        -- wait(1)
        -- local ts = game:GetService("TeleportService")
        -- local p = game:GetService("Players").LocalPlayer
        -- local pid = game.PlaceId
        -- ts:Teleport(pid, p)
	end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local library = {}

function library:AddWindow(text,keybind,LogoHub,NameMap)

    local currenttab = ""
    local uihide = false
    local abc = false
    keybind = keybind or Enum.KeyCode.RightControl

    local Kub = Instance.new("ScreenGui")
    Kub.Name = "Kub"
    Kub.Parent = game.CoreGui
    Kub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Kub
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.ClipsDescendants = true
    Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Main.Position = UDim2.new(0.5, 0, 0.499, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)

    local MainCorner = Instance.new("UICorner")
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local TopCorner = Instance.new("UICorner")
    TopCorner.Name = "TopCorner"
    TopCorner.Parent = Top
    
    local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
    Logo.BackgroundTransparency = 1
	Logo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Logo.Position = UDim2.new(0, 5, 0, 0)
	Logo.Size = UDim2.new(0, 27, 0, 27)
	Logo.Image = "rbxassetid://"..LogoHub

    local NameHub = Instance.new("TextLabel")
    NameHub.Name = "NameHub"
    NameHub.Parent = Top
    NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub.BackgroundTransparency = 1.000
    NameHub.Position = UDim2.new(0, 12, 0, 0)
    NameHub.Size = UDim2.new(0, 61, 0, 27)
    NameHub.Font = Enum.Font.GothamSemibold
    NameHub.Text = text
    NameHub.TextColor3 = Color3.fromRGB(225, 225, 225)
    NameHub.TextSize = 17.000

    local NameHub2 = Instance.new("TextLabel")
    NameHub2.Name = "NameHub2"
    NameHub2.Parent = Top
    NameHub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameHub2.BackgroundTransparency = 1.000
    NameHub2.Position = UDim2.new(0, 71, 0, 0)
    NameHub2.Size = UDim2.new(0, 61, 0, 27)
    NameHub2.Font = Enum.Font.GothamSemibold
    NameHub2.Text = "      Hub - Best Version Mobile"
    NameHub2.TextColor3 = Color3.fromRGB(255,0,0)
    NameHub2.TextSize = 17.000
    NameHub2.TextXAlignment = Enum.TextXAlignment.Left

    local BindButton = Instance.new("TextButton")
    BindButton.Name = "BindButton"
    BindButton.Parent = Top
    BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BindButton.BackgroundTransparency = 1.000
    BindButton.Position = UDim2.new(0, 550, 0, 0)
    BindButton.Size = UDim2.new(0, 100, 0, 27)
    BindButton.Font = Enum.Font.GothamSemibold
    BindButton.Text = tostring(NameMap)
    BindButton.TextColor3 = Color3.fromRGB(230, 230, 230)
    BindButton.TextSize = 15.000
    BindButton.TextXAlignment = Enum.TextXAlignment.Right
    
    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Tab.Position = UDim2.new(0, 12, 0, 40)
    Tab.Size = UDim2.new(0, 633, 0, 29)

    local TabCorner = Instance.new("UICorner")
    TabCorner.Name = "TabCorner"
    TabCorner.Parent = Tab
    
    local ScrollTab = Instance.new("ScrollingFrame")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.BorderSizePixel = 0
    ScrollTab.Size = UDim2.new(0, 633, 0, 29)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0
    
    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = ScrollTab
    UIPadding.PaddingLeft = UDim.new(0, 10)

    local TabList = Instance.new("UIListLayout")
    TabList.Name = "TabList"
    TabList.Parent = ScrollTab
    TabList.FillDirection = Enum.FillDirection.Horizontal
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Padding = UDim.new(0, 5)
    TabList.HorizontalAlignment = 0

    MakeDraggable(Top,Main)
    
    UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightControl then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 400),"Out","Quad",0.4,true)
			end
		end
    end)
	
    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Page.Position = UDim2.new(0, 11, 0, 80)
    Page.Size = UDim2.new(0, 633, 0, 305)

    local PageCorner = Instance.new("UICorner")
    PageCorner.Name = "PageCorner"
    PageCorner.Parent = Page

    local PageFolder = Instance.new("Folder")
    PageFolder.Name = "PageFolder"
    PageFolder.Parent = Page

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageFolder
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.Padding = UDim.new(0, 10)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false

    local Ui = {}
    function Ui:AddTab(text)
        local TabButton = Instance.new("TextButton")
        TabButton.Name = "TabButton"
        TabButton.Parent = ScrollTab
        TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.BackgroundTransparency = 1.000
        TabButton.Size = UDim2.new(0, 100, 0, 29)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
        TabButton.TextSize = 15.000
        TabButton.Text = text
        TabButton.TextTransparency = 0.500
        
        local MainPage = Instance.new("Frame")

        MainPage.Name = "MainPage"
        MainPage.Parent = PageFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainPage.BackgroundTransparency = 1.000
        MainPage.Position = UDim2.new(0.00157977885, 0, 0, 0)
        MainPage.Size = UDim2.new(0, 632, 0, 305)

        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            for i,v in next, PageFolder:GetChildren() do 
                if v.Name == "MainPage" then
                    currenttab = v.Name
                end
                UIPageLayout:JumpTo(MainPage)
            end
		end)

		if abc == false then
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
			abc = true
		end

        local uitab = {}
        function uitab:AddPage()
            local MainFramePage = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ScrollPage = Instance.new("ScrollingFrame")
            local PageList = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local UIPadding_2 = Instance.new("UIPadding")
            local UIListLayout_2 = Instance.new("UIListLayout")
        
            MainFramePage.Name = "MainFramePage"
            MainFramePage.Parent = MainPage
            MainFramePage.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            MainFramePage.Size = UDim2.new(0, 300, 0, 285)
        
            UICorner.Parent = MainFramePage
        
            ScrollPage.Name = "ScrollPage"
            ScrollPage.Parent = MainFramePage
            ScrollPage.Active = true
            ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollPage.BackgroundTransparency = 1.000
            ScrollPage.BorderSizePixel = 0
            ScrollPage.Size = UDim2.new(0, 300, 0, 285)
            ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
            ScrollPage.ScrollBarThickness = 0
        
            PageList.Name = "PageList"
            PageList.Parent = ScrollPage
            PageList.SortOrder = Enum.SortOrder.LayoutOrder
            PageList.Padding = UDim.new(0, 13)
        
            UIPadding.Parent = ScrollPage
            UIPadding.PaddingLeft = UDim.new(0, 20)
            UIPadding.PaddingTop = UDim.new(0, 10)
        
            UIPadding_2.Parent = MainPage
            UIPadding_2.PaddingLeft = UDim.new(0, 10)
            UIPadding_2.PaddingTop = UDim.new(0, 10)
        
            UIListLayout_2.Parent = MainPage
            UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 13)

            game:GetService("RunService").Stepped:Connect(function()
                pcall(function()
                    ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 26)
                    ScrollTab.CanvasSize = UDim2.new(0,TabList.AbsoluteContentSize.X + 10,0,0)
                end)
            end)

            local main = {}
            function main:AddSeperator(text)
                local Seperator = Instance.new("Frame")
                local Sep1 = Instance.new("Frame")
                local Sep2 = Instance.new("TextLabel")
                local Sep3 = Instance.new("Frame")
                
                Seperator.Name = "Seperator"
                Seperator.Parent = ScrollPage
                Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Seperator.BackgroundTransparency = 1.000
                Seperator.Size = UDim2.new(0, 260, 0, 20)
                
                Sep1.Name = "Sep1"
                Sep1.Parent = Seperator
                Sep1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Sep1.BorderSizePixel = 0
                Sep1.Position = UDim2.new(0, 0, 0, 10)
                Sep1.Size = UDim2.new(0, 40, 0, 1)
                
                Sep2.Name = "Sep2"
                Sep2.Parent = Seperator
                Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.BackgroundTransparency = 1.000
                Sep2.Position = UDim2.new(0, 80, 0, 0)
                Sep2.Size = UDim2.new(0, 100, 0, 20)
                Sep2.Font = Enum.Font.GothamSemibold
                Sep2.Text = text
                Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Sep2.TextSize = 14.000
                
                Sep3.Name = "Sep3"
                Sep3.Parent = Seperator
                Sep3.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Sep3.BorderSizePixel = 0
                Sep3.Position = UDim2.new(0, 220, 0, 10)
                Sep3.Size = UDim2.new(0, 40, 0, 1)
            end

            function main:AddLine()
                local Linee = Instance.new("Frame")
                local Line = Instance.new("Frame")
                
                Linee.Name = "Linee"
                Linee.Parent = ScrollPage
                Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Linee.BackgroundTransparency = 1.000
                Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
                Linee.Size = UDim2.new(0, 260, 0, 20)
                
                Line.Name = "Line"
                Line.Parent = Linee
                Line.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Line.BorderSizePixel = 0
                Line.Position = UDim2.new(0, 0, 0, 10)
                Line.Size = UDim2.new(0, 260, 0, 1)
            end

            function main:AddButton(text,Id,callback)
                local Button = Instance.new("Frame")
                local ButtonCorner = Instance.new("UICorner")
                local Btn = Instance.new("TextButton")
                local BtnCorner = Instance.new("UICorner")

                Button.Name = "Button"
                Button.Parent = ScrollPage
                Button.BackgroundColor3 = Color3.fromRGB(0, 255, 170)
                Button.Size = UDim2.new(0, 260, 0, 38)
                Button.BackgroundTransparency = 0.5
                
                ButtonCorner.CornerRadius = UDim.new(0, 5)
                ButtonCorner.Name = "ButtonCorner"
                ButtonCorner.Parent = Button
                
                Btn.Name = "Btn"
                Btn.Parent = Button
                Btn.AutoButtonColor = false
                Btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Btn.Position = UDim2.new(0, 1, 0, 1)
                Btn.Size = UDim2.new(0, 258, 0, 36)
                Btn.Font = Enum.Font.GothamSemibold
                Btn.TextColor3 = Color3.fromRGB(225, 225, 225)
                Btn.TextSize = 16.000
                Btn.Text = text
                Btn.TextTransparency = 0.500

                local Logo = Instance.new("ImageLabel")
                Logo.Name = "Logo"
                Logo.Parent = Button
                Logo.BackgroundTransparency = 1
                Logo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Logo.Position = UDim2.new(0, 10, 0, 5)
                Logo.Size = UDim2.new(0, 27, 0, 27)
                Logo.Image = "rbxassetid://"..Id
                
                BtnCorner.CornerRadius = UDim.new(0, 5)
                BtnCorner.Name = "BtnCorner"
                BtnCorner.Parent = Btn

                Btn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                Btn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        Button,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                Btn.MouseButton1Click:Connect(function()
                    callback()
                    Btn.TextSize = 9
                    TweenService:Create(
                        Btn,
                        TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
                        {TextSize = 16}
                    ):Play()
                end)
            end 

            function main:AddDropdown(text,option,callback)
                local Dropdown = Instance.new("Frame")
                local dropcorner = Instance.new("UICorner")
                local Dropdownn = Instance.new("Frame")
                local droppcorner = Instance.new("UICorner")
                local DropBtn = Instance.new("TextButton")
                local DropLabel = Instance.new("TextLabel")
                local DropScroll = Instance.new("ScrollingFrame")
                local dpd = Instance.new("UIPadding")
                local dll = Instance.new("UIListLayout")
                local DropImage = Instance.new("ImageLabel")
                local isdropping = false

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = ScrollPage
                Dropdown.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Dropdown.BackgroundTransparency = 0.500
                Dropdown.Size = UDim2.new(0, 260, 0, 38) -- 114
                
                dropcorner.CornerRadius = UDim.new(0, 5)
                dropcorner.Name = "dropcorner"
                dropcorner.Parent = Dropdown
                
                Dropdownn.Name = "Dropdownn"
                Dropdownn.Parent = Dropdown
                Dropdownn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Dropdownn.ClipsDescendants = true
                Dropdownn.Position = UDim2.new(0, 1, 0, 1)
                Dropdownn.Size = UDim2.new(0, 258, 0, 36) -- 112
                
                droppcorner.CornerRadius = UDim.new(0, 5)
                droppcorner.Name = "droppcorner"
                droppcorner.Parent = Dropdownn
                
                DropBtn.Name = "DropBtn"
                DropBtn.Parent = Dropdownn
                DropBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropBtn.BackgroundTransparency = 1.000
                DropBtn.Size = UDim2.new(0, 258, 0, 36)
                DropBtn.Font = Enum.Font.SourceSans
                DropBtn.Text = ""
                DropBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                DropBtn.TextSize = 14.000
                
                DropLabel.Name = "DropLabel"
                DropLabel.Parent = Dropdownn
                DropLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropLabel.BackgroundTransparency = 1.000
                DropLabel.Position = UDim2.new(0, 15, 0, 0)
                DropLabel.Size = UDim2.new(0, 180, 0, 36)
                DropLabel.Font = Enum.Font.GothamSemibold
                DropLabel.Text = text
                DropLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                DropLabel.TextSize = 16.000
                DropLabel.TextTransparency = 0.500
                DropLabel.TextXAlignment = Enum.TextXAlignment.Left

                DropImage.Name = "DropImage"
                DropImage.Parent = Dropdownn
                DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropImage.BackgroundTransparency = 1.000
                DropImage.Position = UDim2.new(0, 230, 0, 9)
                DropImage.Rotation = 180.000
                DropImage.Size = UDim2.new(0, 20, 0, 20)
                DropImage.Image = "rbxassetid://6031090990"
                DropImage.ImageTransparency = 0.500
                
                DropScroll.Name = "DropScroll"
                DropScroll.Parent = DropLabel
                DropScroll.Active = true
                DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropScroll.BackgroundTransparency = 1.000
                DropScroll.BorderSizePixel = 0
                DropScroll.Position = UDim2.new(-0.105555557, 0, 1.11111116, 0)
                DropScroll.Size = UDim2.new(0, 258, 0, 70)
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
                DropScroll.ScrollBarThickness = 3
                
                dpd.Name = "dpd"
                dpd.Parent = DropScroll
                dpd.PaddingLeft = UDim.new(0, 5)
                dpd.PaddingTop = UDim.new(0, 5)
                
                dll.Name = "dll"
                dll.Parent = DropScroll
                dll.SortOrder = Enum.SortOrder.LayoutOrder
                dll.Padding = UDim.new(0, 5)

                for i,v in next, option do
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 16.000
                    Item.Text = tostring(v)
                    Item.TextTransparency = 0.5

                    Item.MouseEnter:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0}
                        ):Play()
                    end)
                    Item.MouseLeave:Connect(function()
                        TweenService:Create(
                            Item,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextTransparency = 0.5}
                        ):Play()
                    end)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        DropLabel.Text = text.." : "..v
                        callback(v)
                    end)
                end 

                DropScroll.CanvasSize = UDim2.new(0,0,0,dll.AbsoluteContentSize.Y + 10)

                DropBtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0}
                    ):Play()
                end)

                DropBtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Dropdown,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {ImageTransparency = 0.5}
                    ):Play()
                end)

                DropBtn.MouseButton1Click:Connect(function()
                    if isdropping == false then
                        isdropping = true
                        Dropdown:TweenSize(UDim2.new(0,260,0,114),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,112),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,112),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 0}
                        ):Play()
                    else
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        DropBtn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                    end
                end)

                local drop = {}

                function drop:Clear()
                    DropLabel.Text = tostring(text)
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                    Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    for i, v in next, DropScroll:GetChildren() do
                        if v:IsA("TextButton") then
                            v:Destroy()
                        end
                    end
                end
                function drop:Add(t)
                    local Item = Instance.new("TextButton")
                    Item.Name = "Item"
                    Item.Parent = DropScroll
                    Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Item.BackgroundTransparency = 1.000
                    Item.Size = UDim2.new(0, 248, 0, 29)
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                    Item.TextSize = 16.000
                    Item.TextTransparency = 0.5
                    Item.Text = tostring(t)

                    Item.MouseButton1Click:Connect(function()
                        isdropping = false
                        Dropdown:TweenSize(UDim2.new(0,260,0,38),"Out","Quad",0.3,true)
                        Dropdownn:TweenSize(UDim2.new(0,258,0,36),"Out","Quad",0.3,true)
                        TweenService:Create(
                            DropImage,
                            TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Rotation = 180}
                        ):Play()
                        DropLabel.Text = text.." : "..t
                        callback(t)
                    end)
                end
                return drop
            end

            function main:AddSlider(text,min,max,set,callback)
                local Slider = Instance.new("Frame")
                local slidercorner = Instance.new("UICorner")
                local sliderr = Instance.new("Frame")
                local sliderrcorner = Instance.new("UICorner")
                local SliderLabel = Instance.new("TextLabel")
                local HAHA = Instance.new("Frame")
                local AHEHE = Instance.new("TextButton")
                local bar = Instance.new("Frame")
                local bar1 = Instance.new("Frame")
                local bar1corner = Instance.new("UICorner")
                local barcorner = Instance.new("UICorner")
                local circlebar = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local slidervalue = Instance.new("Frame")
                local valuecorner = Instance.new("UICorner")
                local TextBox = Instance.new("TextBox")
                local UICorner_2 = Instance.new("UICorner")

                Slider.Name = "Slider"
                Slider.Parent = ScrollPage
                Slider.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Slider.BackgroundTransparency = 0.500
                Slider.Size = UDim2.new(0, 260, 0, 48)

                slidercorner.CornerRadius = UDim.new(0, 5)
                slidercorner.Name = "slidercorner"
                slidercorner.Parent = Slider

                sliderr.Name = "sliderr"
                sliderr.Parent = Slider
                sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                sliderr.Position = UDim2.new(0, 1, 0, 1)
                sliderr.Size = UDim2.new(0, 258, 0, 46)

                sliderrcorner.CornerRadius = UDim.new(0, 5)
                sliderrcorner.Name = "sliderrcorner"
                sliderrcorner.Parent = sliderr

                SliderLabel.Name = "SliderLabel"
                SliderLabel.Parent = sliderr
                SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderLabel.BackgroundTransparency = 1.000
                SliderLabel.Position = UDim2.new(0.0581395365, 0, 0, 0)
                SliderLabel.Size = UDim2.new(0, 180, 0, 26)
                SliderLabel.Font = Enum.Font.GothamSemibold
                SliderLabel.Text = text
                SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
                SliderLabel.TextSize = 16.000
                SliderLabel.TextTransparency = 0.500
                SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

                HAHA.Name = "HAHA"
                HAHA.Parent = sliderr
                HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                HAHA.BackgroundTransparency = 1.000
                HAHA.Size = UDim2.new(0, 258, 0, 46)

                AHEHE.Name = "AHEHE"
                AHEHE.Parent = sliderr
                AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                AHEHE.BackgroundTransparency = 1.000
                AHEHE.Position = UDim2.new(0, 10, 0, 35)
                AHEHE.Size = UDim2.new(0, 238, 0, 5)
                AHEHE.Font = Enum.Font.SourceSans
                AHEHE.Text = ""
                AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
                AHEHE.TextSize = 14.000

                bar.Name = "bar"
                bar.Parent = AHEHE
                bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                bar.Size = UDim2.new(0, 238, 0, 5)

                bar1.Name = "bar1"
                bar1.Parent = bar
                bar1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                bar1.BackgroundTransparency = 0.500
                bar1.Size = UDim2.new(set/max, 0, 0, 5)

                bar1corner.CornerRadius = UDim.new(0, 5)
                bar1corner.Name = "bar1corner"
                bar1corner.Parent = bar1

                barcorner.CornerRadius = UDim.new(0, 5)
                barcorner.Name = "barcorner"
                barcorner.Parent = bar

                circlebar.Name = "circlebar"
                circlebar.Parent = bar1
                circlebar.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                circlebar.Size = UDim2.new(0, 10, 0, 10)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = circlebar

                slidervalue.Name = "slidervalue"
                slidervalue.Parent = sliderr
                slidervalue.BackgroundColor3 = Color3.fromRGB(255,255,255)
                slidervalue.BackgroundTransparency = 0.500
                slidervalue.Position = UDim2.new(0, 185, 0, 5)
                slidervalue.Size = UDim2.new(0, 65, 0, 18)

                valuecorner.CornerRadius = UDim.new(0, 5)
                valuecorner.Name = "valuecorner"
                valuecorner.Parent = slidervalue

                TextBox.Parent = slidervalue
                TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                TextBox.Position = UDim2.new(0, 1, 0, 1)
                TextBox.Size = UDim2.new(0, 63, 0, 16)
                TextBox.Font = Enum.Font.GothamSemibold
                TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
                TextBox.TextSize = 9.000
                TextBox.Text = set
                TextBox.TextTransparency = 0.500

                UICorner_2.CornerRadius = UDim.new(0, 5)
                UICorner_2.Parent = TextBox

                HAHA.MouseEnter:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(225,225,225)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                HAHA.MouseLeave:Connect(function()
                    TweenService:Create(
                        Slider,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        SliderLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        bar1,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        circlebar,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(180,180,180)}
                    ):Play()
                    TweenService:Create(
                        slidervalue,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextBox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                local mouse = game.Players.LocalPlayer:GetMouse()
                local uis = game:GetService("UserInputService")

                if Value == nil then
                    Value = set
                    pcall(function()
                        callback(Value)
                    end)
                end
                
                AHEHE.MouseButton1Down:Connect(function()
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                    pcall(function()
                        callback(Value)
                    end)
                    bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                    circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    moveconnection = mouse.Move:Connect(function()
                        TextBox.Text = Value
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                        circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                    end)
                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                            pcall(function()
                                callback(Value)
                            end)
                            bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 238), 0, 5)
                            circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 228), 0, -3)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 238) * bar1.AbsoluteSize.X) + tonumber(min))
                        TextBox.Text = Value
                    end
                end)

                TextBox.FocusLost:Connect(function()
                    if tonumber(TextBox.Text) > max then
                        TextBox.Text  = max
                    end
                    bar1.Size = UDim2.new((tonumber(TextBox.Text) or 0) / max, 0, 0, 5)
                    circlebar.Position = UDim2.new(1, -2, 0, -3)
                    TextBox.Text = tostring(tonumber(TextBox.Text) and math.floor( (tonumber(TextBox.Text) / max) * (max - min) + min) )
                    pcall(callback, TextBox.Text)
                end)
            end

            function main:AddTextbox(text,disappear,callback)
                local Textbox = Instance.new("Frame")
                local TextboxCorner = Instance.new("UICorner")
                local Textboxx = Instance.new("Frame")
                local TextboxxCorner = Instance.new("UICorner")
                local TextboxLabel = Instance.new("TextLabel")
                local txtbtn = Instance.new("TextButton")
                local RealTextbox = Instance.new("TextBox")
                local UICorner = Instance.new("UICorner")

                Textbox.Name = "Textbox"
                Textbox.Parent = ScrollPage
                Textbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Textbox.BackgroundTransparency = 0.500
                Textbox.Size = UDim2.new(0, 260, 0, 38)

                TextboxCorner.CornerRadius = UDim.new(0, 5)
                TextboxCorner.Name = "TextboxCorner"
                TextboxCorner.Parent = Textbox

                Textboxx.Name = "Textboxx"
                Textboxx.Parent = Textbox
                Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Textboxx.Position = UDim2.new(0, 1, 0, 1)
                Textboxx.Size = UDim2.new(0, 258, 0, 36)

                TextboxxCorner.CornerRadius = UDim.new(0, 5)
                TextboxxCorner.Name = "TextboxxCorner"
                TextboxxCorner.Parent = Textboxx

                TextboxLabel.Name = "TextboxLabel"
                TextboxLabel.Parent = Textbox
                TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextboxLabel.BackgroundTransparency = 1.000
                TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
                TextboxLabel.Text = text
                TextboxLabel.Size = UDim2.new(0, 145, 0, 38)
                TextboxLabel.Font = Enum.Font.GothamSemibold
                TextboxLabel.TextColor3 = Color3.fromRGB(255,255,255)
                TextboxLabel.TextSize = 16.000
                TextboxLabel.TextTransparency = 0.500
                TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

                txtbtn.Name = "txtbtn"
                txtbtn.Parent = Textbox
                txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                txtbtn.BackgroundTransparency = 1.000
                txtbtn.Position = UDim2.new(0, 1, 0, 1)
                txtbtn.Size = UDim2.new(0, 258, 0, 36)
                txtbtn.Font = Enum.Font.SourceSans
                txtbtn.Text = ""
                txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                txtbtn.TextSize = 14.000

                RealTextbox.Name = "RealTextbox"
                RealTextbox.Parent = Textbox
                RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                RealTextbox.BackgroundTransparency = 0.500
                RealTextbox.Position = UDim2.new(0, 150, 0, 7)
                RealTextbox.Size = UDim2.new(0, 100, 0, 22)
                RealTextbox.Font = Enum.Font.GothamSemibold
                RealTextbox.Text = ""
                RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
                RealTextbox.TextSize = 11.000
                RealTextbox.TextTransparency = 0.500

                txtbtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    ):Play()
                end)

                txtbtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Textbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        TextboxLabel,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                    TweenService:Create(
                        RealTextbox,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
                    ):Play()
                end)

                RealTextbox.FocusLost:Connect(function()
                    callback(RealTextbox.Text)
                    if disappear then
                        RealTextbox.Text = ""
                    end
                end)

                UICorner.CornerRadius = UDim.new(0, 5)
                UICorner.Parent = RealTextbox
            end

            function main:AddToggle(text,Id,config,callback)
                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local Tgle = Instance.new("Frame")
                local TgleCorner = Instance.new("UICorner")
                local tglebtn = Instance.new("TextButton")
                local ToggleLabel = Instance.new("TextLabel")
                local ToggleImage = Instance.new("Frame")
                local ToggleImageCorner = Instance.new("UICorner")
                local tgleimg = Instance.new("Frame")
                local tgleimg_2 = Instance.new("UICorner")

                Toggle.Name = "Toggle"
                Toggle.Parent = ScrollPage
                Toggle.BackgroundColor3 = Color3.fromRGB(233, 63, 63)
                Toggle.BackgroundTransparency = 0.500
                Toggle.Size = UDim2.new(0, 260, 0, 38)

                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle

                Tgle.Name = "Tgle"
                Tgle.Parent = Toggle
                Tgle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                Tgle.Position = UDim2.new(0, 1, 0, 1)
                Tgle.Size = UDim2.new(0, 258, 0, 36)

                TgleCorner.CornerRadius = UDim.new(0, 5)
                TgleCorner.Name = "TgleCorner"
                TgleCorner.Parent = Tgle

                tglebtn.Name = "tglebtn"
                tglebtn.Parent = Tgle
                tglebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                tglebtn.BackgroundTransparency = 1.000
                tglebtn.Size = UDim2.new(0, 258, 0, 36)
                tglebtn.Font = Enum.Font.SourceSans
                tglebtn.Text = ""
                tglebtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                tglebtn.TextSize = 14.000

                ToggleLabel.Name = "ToggleLabel"
                ToggleLabel.Parent = Tgle
                ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleLabel.BackgroundTransparency = 1.000
                ToggleLabel.Position = UDim2.new(0, 15, 0, 0)
                ToggleLabel.Size = UDim2.new(0, 190, 0, 36)
                ToggleLabel.Font = Enum.Font.GothamSemibold
                ToggleLabel.Text = text
                ToggleLabel.TextColor3 = Color3.fromRGB(233, 63, 63)
                ToggleLabel.TextSize = 16.000
                ToggleLabel.TextTransparency = 0.500
                ToggleLabel.TextXAlignment = Enum.TextXAlignment.Center

                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Tgle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                ToggleImage.BackgroundTransparency = 0.500
                ToggleImage.Position = UDim2.new(0, 225, 0, 5)
                ToggleImage.Size = UDim2.new(0, 26, 0, 26)

                ToggleImageCorner.CornerRadius = UDim.new(0, 5)
                ToggleImageCorner.Name = "ToggleImageCorner"
                ToggleImageCorner.Parent = ToggleImage

                tgleimg.Name = "tgleimg"
                tgleimg.Parent = ToggleImage
                tgleimg.AnchorPoint = Vector2.new(0.5, 0.5)
                tgleimg.BackgroundColor3 = Color3.fromRGB(0, 255, 170)
                tgleimg.BackgroundTransparency = 0.500
                tgleimg.Position = UDim2.new(0, 13, 0, 13)
                tgleimg.Size = UDim2.new(0, 0, 0, 0)

                tgleimg_2.CornerRadius = UDim.new(0, 5)
                tgleimg_2.Name = "tgleimg_2"
                tgleimg_2.Parent = tgleimg

                local Logo = Instance.new("ImageLabel")
                Logo.Name = "Logo"
                Logo.Parent = Toggle
                Logo.BackgroundTransparency = 1
                Logo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                Logo.Position = UDim2.new(0, 10, 0, 12)
                Logo.Size = UDim2.new(0, 17, 0, 17)
                Logo.Image = "rbxassetid://"..Id

                tglebtn.MouseEnter:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                    TweenService:Create(
                        tgleimg,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
				    ):Play()
                end)
                tglebtn.MouseLeave:Connect(function()
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
				    ):Play()
                    TweenService:Create(
                        ToggleImage,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
				    ):Play()
                    TweenService:Create(
                        tgleimg,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0.5}
				    ):Play()
                end)
                if config == true then
                    istoggled = true
                    pcall(callback,istoggled)
                    tgleimg:TweenSize(UDim2.new(0, 26, 0, 26),"In","Bounce",0.1,true)
                    TweenService:Create(
                        Toggle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(0, 255, 170)}
				    ):Play()
                    TweenService:Create(
                        ToggleLabel,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(0, 255, 170)}
                    ):Play()
                end

                local istoggled = config or false
                tglebtn.MouseButton1Click:Connect(function()
                    if istoggled == false then
                        istoggled = true
                        tgleimg:TweenSize(UDim2.new(0, 26, 0, 26),"In","Quad",0.1,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(0, 255, 170)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(0, 255, 170)}
                        ):Play()
                    else
                        istoggled = false
                        tgleimg:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
                        TweenService:Create(
                            Toggle,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(233,63,63)}
				        ):Play()
                        TweenService:Create(
                            ToggleLabel,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(233,63,63)}
                        ):Play()
                    end
                    pcall(callback,istoggled)
                end)
            end

            function main:AddLabel(text)
                local Label = Instance.new("TextLabel")
                local PaddingLabel = Instance.new("UIPadding")
                local labell = {}
        
                Label.Name = "Label"
                Label.Parent = ScrollPage
                Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(0, 260, 0, 20)
                Label.Font = Enum.Font.GothamSemibold
                Label.TextColor3 = Color3.fromRGB(225, 225, 225)
                Label.TextSize = 16.000
                Label.Text = text
                Label.TextXAlignment = Enum.TextXAlignment.Left
    
                PaddingLabel.PaddingLeft = UDim.new(0,15)
                PaddingLabel.Parent = Label
                PaddingLabel.Name = "PaddingLabel"
        
                function labell:Set(newtext)
                    Label.Text = newtext
                end
    
                return labell
            end

            return main
        end
        return uitab
    end
    return Ui
end
local function loading()
	local Loading = Instance.new("ScreenGui")
	local Blur = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Logo = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Load = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Bar = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local BAR1 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local Top = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")

	--Properties:

	Loading.Name = "Loading"
	Loading.Parent = game.CoreGui
	Loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Blur.Name = "Blur"
	Blur.Parent = Loading
	Blur.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Blur.BackgroundTransparency = 0.500
	Blur.Size = UDim2.new(1, 0, 1, 0)

	Main.Name = "Main"
	Main.Parent = Blur
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.499241263, 0)
	Main.Size = UDim2.new(0, 500, 0, 300)

	UICorner.Parent = Main

	Logo.Name = "Logo"
	Logo.Parent = Main
	Logo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Logo.Position = UDim2.new(0.400000006, 0, 0.163333327, 0)
	Logo.Size = UDim2.new(0, 100, 0, 100)
	Logo.Image = "rbxassetid://10931454122"

	UICorner_2.CornerRadius = UDim.new(0, 100)
	UICorner_2.Parent = Logo

	Load.Name = "Load"
	Load.Parent = Main
	Load.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Load.Position = UDim2.new(0, 15, 0, 170)
	Load.Size = UDim2.new(0, 470, 0, 115)

	UICorner_3.Parent = Load

	Bar.Name = "Bar"
	Bar.Parent = Load
	Bar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Bar.Position = UDim2.new(0, 15, 0, 80)
	Bar.Size = UDim2.new(0, 440, 0, 15)

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = Bar

	BAR1.Name = "BAR1"
	BAR1.Parent = Bar
	BAR1.BackgroundColor3 = Color3.fromRGB(255,0,0)
	BAR1.Size = UDim2.new(0, 0, 0, 15)

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = BAR1

	TextLabel.Parent = Load
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0319148935, 0, 0.173913032, 0)
	TextLabel.Size = UDim2.new(0, 440, 0, 25)
	TextLabel.Font = Enum.Font.GothamSemibold
	TextLabel.Text = "Loading"
	TextLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
	TextLabel.TextSize = 16.000
	spawn(function()
		for i = 1,5 do 
			wait(0.5)
			TextLabel.Text = "Loading."
			wait(0.5) 
			TextLabel.Text = "Loading.."
			wait(0.5)
			TextLabel.Text = "Loading..."
		end
	end)

	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Top.Size = UDim2.new(0, 500, 0, 30)

	UICorner_6.Parent = To
	TextLabel_2.Parent = Top
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.0299999993, 0, 0, 0)
	TextLabel_2.Size = UDim2.new(0, 61, 0, 30)
	TextLabel_2.Font = Enum.Font.GothamSemibold
	TextLabel_2.Text = "Normal"
	TextLabel_2.TextColor3 = Color3.fromRGB(225, 225, 225)
	TextLabel_2.TextSize = 17.000

	TextLabel_3.Parent = Top
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.Position = UDim2.new(0.151999995, 0, 0, 0)
	TextLabel_3.Size = UDim2.new(0, 61, 0, 30)
	TextLabel_3.Font = Enum.Font.GothamSemibold
	TextLabel_3.Text = " HUB"
	TextLabel_3.TextColor3 = Color3.fromRGB(255,0,0)
	TextLabel_3.TextSize = 17.000
	TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
	
	BAR1:TweenSize(UDim2.new(0,440,0,15),"Out","Linear",1,true)
	wait(1)
    Main:TweenSize(UDim2.new(0,0,0,0),"Out","Quad",0.4,true)
    wait(0.4)
	
	do 
		local Load = game.CoreGui:FindFirstChild("Loading")
		if Load then
			Load:Destroy()
		end
	end
end

loading()

local win = library:AddWindow("          Normal",10931454122,10931454122,"[ Blox Fruits 17.3 ]")

local General = win:AddTab("Auto Farm")
local Main1 = General:AddPage()
local Main2 = General:AddPage()

local Item = win:AddTab("Item & Quest")
local Quest1 = Item:AddPage()
local Quest2 = Item:AddPage()

local Combat = win:AddTab("Combat")
local Combat1 = Combat:AddPage()
local Combat2 = Combat:AddPage()

local Dungeons = win:AddTab("Dungeons")
local Dungeons1 = Dungeons:AddPage()
local Dungeons2 = Dungeons:AddPage()

local Misc = win:AddTab("Misc & Fruits")
local Misc1 = Misc:AddPage()
local Misc2 = Misc:AddPage()


Main1:AddSeperator("Welcome to Normal Hub")

local timelabel = Main1:AddLabel("Server Time")

spawn(function()
    while Wait() do 
        pcall(function()
            local GameTime = math.floor(workspace.DistributedGameTime+0.5)
            local Hour = math.floor(GameTime/(60^2))%24
            local Minute = math.floor(GameTime/(60^1))%60
            local Second = math.floor(GameTime/(60^0))%60
            timelabel:Set("Server Time : "..Hour.."(hr) "..Minute.."(m) "..Second.."(s)")
        end)
    end
end)
if not _G.Setting then
    _G.Setting = {
        
    }
end

local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThirdWorld = true
end
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
local j = game:GetService("UserInputService")
local c = game:GetService("ReplicatedStorage")
local e = c:WaitForChild("Remotes")
local E = e:WaitForChild("CommF_")
local a = e:WaitForChild("CommE")
local l = game:GetService("HttpService")
local t = game:GetService("RunService")
local q = workspace:WaitForChild("Enemies")
local s = game:GetService("Teams")
local J = game:GetService("Players")
local W = game:GetService("VirtualUser")
local x = J.LocalPlayer
local N = require(x.PlayerScripts.CombatFramework)
local h = require(c.CombatFramework.RigLib)
local o = require(x.PlayerScripts.CombatFramework.Particle)
local A = {Combat = require(x.PlayerScripts.CombatFramework)}

getgenv().increment = nil
local Q = require(x.PlayerScripts.CombatFramework)
local Y = getupvalues(Q)[2]
function Maxincrement()
    local H = #Y.activeController.anims.basic
    return H
end
cd = 0
local function G()
    task.spawn(
        function()
            pcall(
                function()
                    if tick() >= cd then
                        if game.PlaceId == 2753915549 then
                            cd = tick() + 1.0E-10
                        elseif game.PlaceId == 4442272183 then
                            cd = tick() + 1.0E-6
                        else
                            cd = tick() + 1.0E-10
                        end
                        Y.activeController:attack()
                    end
                end
            )
        end
    )
end
getgenv().NinoGetWeapon = function()
    local p13 = Y.activeController
    local wea = p13.blades[1]
    if not wea then return end
    while wea.Parent ~= game.Players.LocalPlayer.Character do wea = wea.Parent end
    return wea
end
local C = require(game.ReplicatedStorage.Util.CameraShaker):Stop()
task.spawn(
    function()
        while true do
            task.wait()
            pcall(
                function()
                    if _G.Setting.FastAttack then
                            Y.activeController.focusStart = 0
                            Y.activeController.hitboxMagnitude = 200
                            Y.activeController.timeToNextBlock = 0
                            Y.activeController.timeToNextAttack = 0
                            Y.activeController.attacking = false
                            if Maxincrement() ~= nil then
                                Y.activeController.increment = tonumber(Maxincrement())
                            end
                        else
                            Y.activeController.hitboxMagnitude = 200
                            if Maxincrement() ~= nil then
                                Y.activeController.increment = tonumber(Maxincrement())
                            end
                    end
                end
            )
        end
    end
)
local N = require(x.PlayerScripts.CombatFramework)
local h = require(c.CombatFramework.RigLib)
local o = require(x.PlayerScripts.CombatFramework.Particle)
local A = {Combat = require(x.PlayerScripts.CombatFramework)}
o.play = function()
    return
end
h.wrapAttackAnimationAsync = function(L, Z, F, m, H)
    local z = h.getBladeHits(Z, F, m)
    if z then
        if _G.FastAttack and _G.Setting.FastAttack then
            L:Play(1.0E-5, 1.0E-5, 1.0E-5)
            H(z)
        else
            H(z)
        end
    end
end
task.spawn(
    function()
        pcall(
            function()
                local w = require(x.PlayerScripts.CombatFramework.CameraShaker)
                w.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
            end
        )
    end
)
getgenv().hit = function()
    task.spawn(G)
end
task.spawn(function()
    while true do task.wait()
        if _G.FastAttack and _G.Setting.FastAttack then
            pcall(getgenv().hit)
        end
    end
end)
a = tick()
task.spawn(function()
    while true do task.wait(.1)
        pcall(function()
            if _G.FastAttack and _G.Setting.FastAttack then
                if tonumber(#getHits(55)) > 0 then
                    if tick() > a + 0.175 then
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(_G.Setting.SelectWeapon))
                        Y.activeController:oldClientFix()
                        Y.activeController:new()
                        a = tick()
                    end
                end
            end
        end)
    end
end)
task.spawn(
    function()
        while true do
            task.wait(0.3)
            coroutine.wrap(
                function()
                    pcall(
                        function()
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "weaponChange",
                                tostring(getgenv().NinoGetWeapon())
                            )
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                                "unequipWeapon",
                                tostring(getgenv().NinoGetWeapon())
                            )
                        end
                    )
                end
            )()
        end
    end
)

    task.spawn( function()
        while task.wait() do
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end)
        end
    end)


    task.spawn(function()
        while true do wait(1)
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    getgenv().E_Tools = tostring(r.Character:FindFirstChildOfClass("Tool").Name)
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild(getgenv().E_Tools) then
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Remove()
                    end
                end
            end)
        end
    end)

function topos(CFgo)
    local tweenfunc = {}
    if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 250 then
        pcall(function()
            _G.Tween:Cancel()
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
            return
        end)
    end
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude / 275, Enum.EasingStyle.Linear)
    _G.Tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {
        CFrame = CFgo
    })
    _G.Tween:Play()
    function tweenfunc:Stop()
        _G.Tween:Cancel()
    end
    return tweenfunc
end
function BodyClip()
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Normal Hub") then
        local Noclip = Instance.new("BodyVelocity")
        Noclip.Name = "Normal Hub"
        Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        Noclip.MaxForce = Vector3.new(100000,100000,100000)
        Noclip.Velocity = Vector3.new(0,0,0)
    end
end

function Buso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

function LV()
    local lv = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if lv == 1 or lv <= 9 then
            return {
                {
                    Mon = "Bandit [Lv. 5]",
                    NameQ = "BanditQuest1",
                    NumberQ = 1,
                    NameMon = "Bandit",
                    POSQ = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544),
                    PM = CFrame.new(1043.55811, 68.961647, 1573.30005, 0.963112056, 5.33721192e-08, -0.269100726, -4.2163574e-08, 1, 4.7431584e-08, 0.269100726, -3.4335681e-08, 0.963112056),
                    SPAWNPOINT = "Default",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 10 or lv <= 14 then
            return {
                {
                    Mon = "Monkey [Lv. 14]",
                    NameQ = "JungleQuest",
                    NumberQ = 1,
                    NameMon = "Monkey",
                    POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                    PM = CFrame.new(-1776.6158447265625, 60.959320068359375, 48.25599670410156),
                    SPAWNPOINT = "Jungle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 15 or lv <= 29 then
            return {
                {
                    Mon = "Gorilla [Lv. 20]",
                    NameQ = "JungleQuest",
                    NumberQ = 2,
                    NameMon = "Gorilla",
                    POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                    PM = CFrame.new(-1134.4501953125, 40.588008880615234, -516.5689697265625),
                    SPAWNPOINT = "Jungle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Monkey [Lv. 14]",
                    NameQ = "JungleQuest",
                    NumberQ = 1,
                    NameMon = "Monkey",
                    POSQ = CFrame.new(-1598.09, 35.5501, 153.378),
                    PM = CFrame.new(-1776.6158447265625, 60.959320068359375, 48.25599670410156),
                    SPAWNPOINT = "Jungle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 30 or lv <= 39 then
            return {
                {
                    Mon = "Pirate [Lv. 35]",
                    NameQ = "BuggyQuest1",
                    NumberQ = 1,
                    NameMon = "Pirate",
                    POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                    PM = CFrame.new(-1147.1629638671875, 44.877357482910156, 3849.13134765625),
                    SPAWNPOINT = "Pirate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 40 or lv <= 59 then
            return {
                {
                    Mon = "Pirate [Lv. 35]",
                    NameQ = "BuggyQuest1",
                    NumberQ = 1,
                    NameMon = "Pirate",
                    POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                    PM = CFrame.new(-1147.1629638671875, 44.877357482910156, 3849.13134765625),
                    SPAWNPOINT = "Pirate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Brute [Lv. 45]",
                    NameQ = "BuggyQuest1",
                    NumberQ = 2,
                    NameMon = "Brute",
                    POSQ = CFrame.new(-1141.07, 4.10002, 3831.55),
                    PM = CFrame.new(-1149.7659912109375, 65.32644653320312, 4163.37255859375),
                    SPAWNPOINT = "Pirate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 60 or lv <= 74 then
            return {
                {
                    Mon = "Desert Bandit [Lv. 60]",
                    NameQ = "DesertQuest",
                    NumberQ = 1,
                    NameMon = "Desert Bandit",
                    POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                    PM = CFrame.new(1033.265625, 28.10597038269043, 4486.12255859375),
                    SPAWNPOINT = "Desert",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 75 or lv <= 89 then
            return {
                {
                    Mon = "Desert Officer [Lv. 70]",
                    NameQ = "DesertQuest",
                    NumberQ = 2,
                    NameMon = "Desert Officer",
                    POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                    PM = CFrame.new(1591.7296142578125, 3.67695951461792, 4363.29638671875),
                    SPAWNPOINT = "Desert",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Desert Bandit [Lv. 60]",
                    NameQ = "DesertQuest",
                    NumberQ = 1,
                    NameMon = "Desert Bandit",
                    POSQ = CFrame.new(894.489, 5.14001, 4392.43),
                    PM = CFrame.new(1033.265625, 28.10597038269043, 4486.12255859375),
                    SPAWNPOINT = "Desert",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 90 or lv <= 99 then
            return {
                {
                    Mon = "Snow Bandit [Lv. 90]",
                    NameQ = "SnowQuest",
                    NumberQ = 1,
                    NameMon = "Snow Bandit",
                    POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                    PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                    SPAWNPOINT = "Ice",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 100 or lv <= 119 then
            return {
                {
                    Mon = "Snowman [Lv. 100]",
                    NameQ = "SnowQuest",
                    NumberQ = 2,
                    NameMon = "Snowman",
                    POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                    PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                    SPAWNPOINT = "Ice",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Snow Bandit [Lv. 90]",
                    NameQ = "SnowQuest",
                    NumberQ = 1,
                    NameMon = "Snow Bandit",
                    POSQ = CFrame.new(1389.74, 86.6521, -1298.91),
                    PM = CFrame.new(1222.4376220703125, 105.9024887084961, -1440.41845703125),
                    SPAWNPOINT = "Ice",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 120 or lv <= 149 then
            return {
                {
                    Mon = "Chief Petty Officer [Lv. 120]",
                    NameQ = "MarineQuest2",
                    NumberQ = 1,
                    NameMon = "Chief Petty Officer",
                    POSQ = CFrame.new(-5039.59, 27.35, 4324.68),
                    PM = CFrame.new(-4910.5322265625, 80.91588592529297, 4308.3427734375),
                    SPAWNPOINT = "MarineBase",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 150 or lv <= 174 then
            return {
                {
                    Mon = "Sky Bandit [Lv. 150]",
                    NameQ = "SkyQuest",
                    NumberQ = 1,
                    NameMon = "Sky Bandit",
                    POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                    PM = CFrame.new(-4954.2421875, 365.5449523925781, -2909.3525390625),
                    SPAWNPOINT = "Sky",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 175 or lv <= 189 then
            return {
                {
                    Mon = "Dark Master [Lv. 175]",
                    NameQ = "SkyQuest",
                    NumberQ = 2,
                    NameMon = "Dark Master",
                    POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                    PM = CFrame.new(-5226.171875, 429.76190185546875, -2278.52490234375),
                    SPAWNPOINT = "Sky",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Sky Bandit [Lv. 150]",
                    NameQ = "SkyQuest",
                    NumberQ = 1,
                    NameMon = "Sky Bandit",
                    POSQ = CFrame.new(-4839.53, 716.369, -2619.44),
                    PM = CFrame.new(-4954.2421875, 365.5449523925781, -2909.3525390625),
                    SPAWNPOINT = "Sky",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 190 or lv <= 209 then
            return {
                {
                    Mon = "Prisoner [Lv. 190]",
                    NameQ = "PrisonerQuest",
                    NumberQ = 1,
                    NameMon = "Prisoner",
                    POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                    PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                    SPAWNPOINT = "Prison",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 210 or lv <= 249 then
            return {
                {
                    Mon = "Prisoner [Lv. 190]",
                    NameQ = "PrisonerQuest",
                    NumberQ = 1,
                    NameMon = "Prisoner",
                    POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                    PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                    SPAWNPOINT = "Prison",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Dangerous Prisoner [Lv. 210]",
                    NameQ = "PrisonerQuest",
                    NumberQ = 2,
                    NameMon = "Dangerous Prisoner",
                    POSQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118),
                    PM = CFrame.new(5429.359375, 15.777754783630371, 507.32916259765625),
                    SPAWNPOINT = "Prison",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 250 or lv <= 274 then
            return {
                {
                    Mon = "Toga Warrior [Lv. 250]",
                    NameQ = "ColosseumQuest",
                    NumberQ = 1,
                    NameMon = "Toga Warrior",
                    POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                    PM = CFrame.new(-1819.77587890625, 7.289084434509277, -2739.4296875),
                    SPAWNPOINT = "Colosseum",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 275 or lv <= 299 then
            return {
                {
                    Mon = "Gladiator [Lv. 275]",
                    NameQ = "ColosseumQuest",
                    NumberQ = 2,
                    NameMon = "Gladiator",
                    POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                    PM = CFrame.new(-1296.4832763671875, 47.22811508178711, -3321.103271484375),
                    SPAWNPOINT = "Colosseum",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Toga Warrior [Lv. 250]",
                    NameQ = "ColosseumQuest",
                    NumberQ = 1,
                    NameMon = "Toga Warrior",
                    POSQ = CFrame.new(-1580.05, 6.35, -2986.48),
                    PM = CFrame.new(-1819.77587890625, 7.289084434509277, -2739.4296875),
                    SPAWNPOINT = "Colosseum",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 300 or lv <= 324 then
            return {
                {
                    Mon = "Military Soldier [Lv. 300]",
                    NameQ = "MagmaQuest",
                    NumberQ = 1,
                    NameMon = "Military Soldier",
                    POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                    PM = CFrame.new(-5513.990234375, 62.925025939941406, 8577.1943359375),
                    SPAWNPOINT = "Magma",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 325 or lv <= 374 then
            return {
                {
                    Mon = "Military Spy [Lv. 325]",
                    NameQ = "MagmaQuest",
                    NumberQ = 2,
                    NameMon = "Military Spy",
                    POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                    PM = CFrame.new(-5799.3564453125, 98.38143157958984, 8802.822265625),
                    SPAWNPOINT = "Magma",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Military Soldier [Lv. 300]",
                    NameQ = "MagmaQuest",
                    NumberQ = 1,
                    NameMon = "Military Soldier",
                    POSQ = CFrame.new(-5313.37, 10.95, 8515.29),
                    PM = CFrame.new(-5513.990234375, 62.925025939941406, 8577.1943359375),
                    SPAWNPOINT = "Magma",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 375 or lv <= 399 then
            return {
                {
                    Mon = "Fishman Warrior [Lv. 375]",
                    NameQ = "FishmanQuest",
                    NumberQ = 1,
                    NameMon = "Fishman Warrior",
                    POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                    PM = CFrame.new(60946.4765625, 48.79884719848633, 1528.651123046875),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                        Magnet = 3000
                    }
                }
            }
        elseif lv == 400 or lv <= 449 then
            return {
                {
                    Mon = "Fishman Commando [Lv. 400]",
                    NameQ = "FishmanQuest",
                    NumberQ = 2,
                    NameMon = "Fishman Commando",
                    POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                    PM = CFrame.new(61939.171875, 76.609375, 1594.226318359375),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                        Magnet = 3000
                    }
                },
                {
                    Mon = "Fishman Warrior [Lv. 375]",
                    NameQ = "FishmanQuest",
                    NumberQ = 1,
                    NameMon = "Fishman Warrior",
                    POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                    PM = CFrame.new(60946.4765625, 48.79884719848633, 1528.651123046875),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                        Magnet = 3000
                    }
                },
            }
        elseif lv == 450 or lv <= 474 then
            return {
                {
                    Mon = "God's Guard [Lv. 450]",
                    NameQ = "SkyExp1Quest",
                    NumberQ = 1,
                    NameMon = "God's Guard",
                    POSQ = CFrame.new(-4721.89, 843.875, -1949.97),
                    PM = CFrame.new(-4714.8193359375, 853.3318481445312, -1932.6981201171875),
                    SPAWNPOINT = "Sky",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-4607.82275, 872.54248, -1667.55688),
                        Magnet = 3000
                    }
                },
                {
                    Mon = "Fishman Commando [Lv. 400]",
                    NameQ = "FishmanQuest",
                    NumberQ = 2,
                    NameMon = "Fishman Commando",
                    POSQ = CFrame.new(61121.1, 17.9531, 1564.53),
                    PM = CFrame.new(61939.171875, 76.609375, 1594.226318359375),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),
                        Magnet = 3000
                    }
                }
            }
        elseif lv == 475 or lv <= 524 then
            return {
                {
                    Mon = "Shanda [Lv. 475]",
                    NameQ = "SkyExp1Quest",
                    NumberQ = 2,
                    NameMon = "Shanda",
                    POSQ = CFrame.new(-7859.1, 5544.19, -381.476),
                    PM = CFrame.new(-7780.4248046875, 5581.994140625, -596.9102172851562),
                    SPAWNPOINT = "Sky2",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                        Magnet = 3000
                    }
                },
                {
                    Mon = "God's Guard [Lv. 450]",
                    NameQ = "SkyExp1Quest",
                    NumberQ = 1,
                    NameMon = "God's Guard",
                    POSQ = CFrame.new(-4721.89, 843.875, -1949.97),
                    PM = CFrame.new(-4714.8193359375, 853.3318481445312, -1932.6981201171875),
                    SPAWNPOINT = "Sky",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-4607.82275, 872.54248, -1667.55688),
                        Magnet = 3000
                    }
                },
            }
        elseif lv == 525 or lv <= 549 then
            return {
                {
                    Mon = "Royal Squad [Lv. 525]",
                    NameQ = "SkyExp2Quest",
                    NumberQ = 1,
                    NameMon = "Royal Squad",
                    POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                    PM = CFrame.new(-7644.8701171875, 5637.2060546875, -1423.093994140625),
                    SPAWNPOINT = "Sky2",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                        Magnet = 3000
                    }
                }
            }
        elseif lv == 550 or lv <= 624 then
            return {
                {
                    Mon = "Royal Soldier [Lv. 550]",
                    NameQ = "SkyExp2Quest",
                    NumberQ = 2,
                    NameMon = "Royal Soldier",
                    POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                    PM = CFrame.new(-7854.5185546875, 5668.95703125, -1713.879150390625),
                    SPAWNPOINT = "Sky2",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                        Magnet = 3000
                    }
                },
                {
                    Mon = "Royal Squad [Lv. 525]",
                    NameQ = "SkyExp2Quest",
                    NumberQ = 1,
                    NameMon = "Royal Squad",
                    POSQ = CFrame.new(-7906.82, 5634.66, -1411.99),
                    PM = CFrame.new(-7644.8701171875, 5637.2060546875, -1423.093994140625),
                    SPAWNPOINT = "Sky2",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047),
                        Magnet = 3000
                    }
                }
            }
        elseif lv == 625 or lv <= 649 then
            return {
                {
                    Mon = "Galley Pirate [Lv. 625]",
                    NameQ = "FountainQuest",
                    NumberQ = 1,
                    NameMon = "Galley Pirate",
                    POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                    PM = CFrame.new(5579.63525390625, 38.62645721435547, 3938.308837890625),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv >= 650 then
            return {
                {
                    Mon = "Galley Captain [Lv. 650]",
                    NameQ = "FountainQuest",
                    NumberQ = 2,
                    NameMon = "Galley Captain",
                    POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                    PM = CFrame.new(5697.27392578125, 59.626686096191406, 5030.4912109375),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Galley Pirate [Lv. 625]",
                    NameQ = "FountainQuest",
                    NumberQ = 1,
                    NameMon = "Galley Pirate",
                    POSQ = CFrame.new(5259.82, 37.35, 4050.03),
                    PM = CFrame.new(5579.63525390625, 38.62645721435547, 3938.308837890625),
                    SPAWNPOINT = "Fountain",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        end
    end
    if NewWorld then
        if lv == 700 or lv <= 724 then
            return {
                {
                    Mon = "Raider [Lv. 700]",
                    NameQ = "Area1Quest",
                    NumberQ = 1,
                    NameMon = "Raider",
                    POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                    PM = CFrame.new(-273.5111999511719, 79.81228637695312, 2487.2451171875),
                    SPAWNPOINT = "DressTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 725 or lv <= 774 then
            return {
                {
                    Mon = "Mercenary [Lv. 725]",
                    NameQ = "Area1Quest",
                    NumberQ = 2,
                    NameMon = "Mercenary",
                    POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                    PM = CFrame.new(-1045.1549072265625, 72.9854965209961, 1441.2437744140625),
                    SPAWNPOINT = "DressTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Raider [Lv. 700]",
                    NameQ = "Area1Quest",
                    NumberQ = 1,
                    NameMon = "Raider",
                    POSQ = CFrame.new(-429.544, 71.77, 1836.18),
                    PM = CFrame.new(-273.5111999511719, 79.81228637695312, 2487.2451171875),
                    SPAWNPOINT = "DressTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 775 or lv <= 874 then
            return {
                {
                    Mon = "Swan Pirate [Lv. 775]",
                    NameQ = "Area2Quest",
                    NumberQ = 1,
                    NameMon = "Swan Pirate",
                    POSQ = CFrame.new(638.438, 71.77, 918.283),
                    PM = CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125),
                    SPAWNPOINT = "DressTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 875 or lv <= 899 then
            return {
                {
                    Mon = "Marine Lieutenant [Lv. 875]",
                    NameQ = "MarineQuest3",
                    NumberQ = 1,
                    NameMon = "Marine Lieutenant",
                    POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                    PM = CFrame.new(-2876.41015625, 72.9919204711914, -2915.28173828125),
                    SPAWNPOINT = "Greenb",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 900 or lv <= 949 then
            return {
                {
                    Mon = "Marine Captain [Lv. 900]",
                    NameQ = "MarineQuest3",
                    NumberQ = 2,
                    NameMon = "Marine Captain",
                    POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                    PM = CFrame.new(-1854.1995849609375, 72.9919204711914, -3454.631103515625),
                    SPAWNPOINT = "Greenb",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Marine Lieutenant [Lv. 875]",
                    NameQ = "MarineQuest3",
                    NumberQ = 1,
                    NameMon = "Marine Lieutenant",
                    POSQ = CFrame.new(-2440.8, 71.7141, -3216.07),
                    PM = CFrame.new(-2876.41015625, 72.9919204711914, -2915.28173828125),
                    SPAWNPOINT = "Greenb",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 950 or lv <= 974 then
            return {
                {
                    Mon = "Zombie [Lv. 950]",
                    NameQ = "ZombieQuest",
                    NumberQ = 1,
                    NameMon = "Zombie",
                    POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                    PM = CFrame.new(-5696.03271484375, 126.05777740478516, -769.0901489257812),
                    SPAWNPOINT = "Graveyard",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 975 or lv <= 999 then
            return {
                {
                    Mon = "Vampire [Lv. 975]",
                    NameQ = "ZombieQuest",
                    NumberQ = 2,
                    NameMon = "Vampire",
                    POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                    PM = CFrame.new(-5982.53662109375, 6.428503036499023, -1285.8414306640625),
                    SPAWNPOINT = "Graveyard",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Zombie [Lv. 950]",
                    NameQ = "ZombieQuest",
                    NumberQ = 1,
                    NameMon = "Zombie",
                    POSQ = CFrame.new(-5497.06, 47.5923, -795.237),
                    PM = CFrame.new(-5696.03271484375, 126.05777740478516, -769.0901489257812),
                    SPAWNPOINT = "Graveyard",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1000 or lv <= 1049 then
            return {
                {
                    Mon = "Snow Trooper [Lv. 1000]",
                    NameQ = "SnowMountainQuest",
                    NumberQ = 1,
                    NameMon = "Snow Trooper",
                    POSQ = CFrame.new(609.859, 400.12, -5372.26),
                    PM = CFrame.new(534.3240356445312, 431.5126953125, -5567.9462890625),
                    SPAWNPOINT = "Snowy",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1050 or lv <= 1099 then
            return {
                {
                    Mon = "Winter Warrior [Lv. 1050]",
                    NameQ = "SnowMountainQuest",
                    NumberQ = 2,
                    NameMon = "Winter Warrior",
                    POSQ = CFrame.new(609.859, 400.12, -5372.26),
                    PM = CFrame.new(1273.2938232421875, 456.7721252441406, -5191.2685546875),
                    SPAWNPOINT = "Snowy",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Snow Trooper [Lv. 1000]",
                    NameQ = "SnowMountainQuest",
                    NumberQ = 1,
                    NameMon = "Snow Trooper",
                    POSQ = CFrame.new(609.859, 400.12, -5372.26),
                    PM = CFrame.new(534.3240356445312, 431.5126953125, -5567.9462890625),
                    SPAWNPOINT = "Snowy",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1100 or lv <= 1124 then
            return {
                {
                    Mon = "Lab Subordinate [Lv. 1100]",
                    NameQ = "IceSideQuest",
                    NumberQ = 1,
                    NameMon = "Lab Subordinate",
                    POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                    PM = CFrame.new(-5753.0439453125, 35.25969314575195, -4497.27001953125),
                    SPAWNPOINT = "CircleIslandIce",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1125 or lv <= 1174 then
            return {
                {
                    Mon = "Horned Warrior [Lv. 1125]",
                    NameQ = "IceSideQuest",
                    NumberQ = 2,
                    NameMon = "Horned Warrior",
                    POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                    PM = CFrame.new(-6402.650390625, 24.521888732910156, -5813.54150390625),
                    SPAWNPOINT = "CircleIslandIce",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Lab Subordinate [Lv. 1100]",
                    NameQ = "IceSideQuest",
                    NumberQ = 1,
                    NameMon = "Lab Subordinate",
                    POSQ = CFrame.new(-6064.07, 15.2423, -4902.98),
                    PM = CFrame.new(-5753.0439453125, 35.25969314575195, -4497.27001953125),
                    SPAWNPOINT = "CircleIslandIce",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1175 or lv <= 1199 then
            return {
                {
                    Mon = "Magma Ninja [Lv. 1175]",
                    NameQ = "FireSideQuest",
                    NumberQ = 1,
                    NameMon = "Magma Ninja",
                    POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                    PM = CFrame.new(-5461.70263671875, 130.26065063476562, -5837.99853515625),
                    SPAWNPOINT = "CircleIslandFire",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1200 or lv <= 1249 then
            return {
                {
                    Mon = "Lava Pirate [Lv. 1200]",
                    NameQ = "FireSideQuest",
                    NumberQ = 2,
                    NameMon = "Lava Pirate",
                    POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                    PM = CFrame.new(-5221.6474609375, 48.07244110107422, -4683.22607421875),
                    SPAWNPOINT = "CircleIslandFire",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Magma Ninja [Lv. 1175]",
                    NameQ = "FireSideQuest",
                    NumberQ = 1,
                    NameMon = "Magma Ninja",
                    POSQ = CFrame.new(-5428.03, 15.0623, -5299.43),
                    PM = CFrame.new(-5461.70263671875, 130.26065063476562, -5837.99853515625),
                    SPAWNPOINT = "CircleIslandFire",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1250 or lv <= 1274 then
            return {
                {
                    Mon = "Ship Deckhand [Lv. 1250]",
                    NameQ = "ShipQuest1",
                    NumberQ = 1,
                    NameMon = "Ship Deckhand",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                }
            }
        elseif lv == 1275 or lv <= 1299 then
            return {
                {
                    Mon = "Ship Engineer [Lv. 1275]",
                    NameQ = "ShipQuest1",
                    NumberQ = 2,
                    NameMon = "Ship Engineer",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                },
                {
                    Mon = "Ship Deckhand [Lv. 1250]",
                    NameQ = "ShipQuest1",
                    NumberQ = 1,
                    NameMon = "Ship Deckhand",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                }
            }
        elseif lv == 1300 or lv <= 1324 then
            return {
                {
                    Mon = "Ship Steward [Lv. 1300]",
                    NameQ = "ShipQuest2",
                    NumberQ = 1,
                    NameMon = "Ship Steward",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                }
            }
        elseif lv == 1325 or lv <= 1349 then
            return {
                {
                    Mon = "Ship Officer [Lv. 1325]",
                    NameQ = "ShipQuest2",
                    NumberQ = 2,
                    NameMon = "Ship Officer",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                },
                {
                    Mon = "Ship Steward [Lv. 1300]",
                    NameQ = "ShipQuest2",
                    NumberQ = 1,
                    NameMon = "Ship Steward",
                    POSQ = CFrame.new(1041.1, 124.167, 32909.2),
                    PM = CFrame.new(917.8352661132812, 181.08331298828125, 33269.1015625),
                    SPAWNPOINT = "Ship",
                    Warp = {
                        Use = true,
                        Position =  Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                        Magnet = 20000
                    }
                }
            }
        elseif lv == 1350 or lv <= 1374 then
            return {
                {
                    Mon = "Arctic Warrior [Lv. 1350]",
                    NameQ = "FrostQuest",
                    NumberQ = 1,
                    NameMon = "Arctic Warrior",
                    POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                    PM = CFrame.new(6018.197265625, 52.36618423461914, -6152.02978515625),
                    SPAWNPOINT = "IceCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1375 or lv <= 1424 then
            return {
                {
                    Mon = "Snow Lurker [Lv. 1375]",
                    NameQ = "FrostQuest",
                    NumberQ = 2,
                    NameMon = "Snow Lurker",
                    POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                    PM = CFrame.new(5640.9736328125, 44.23918914794922, -6770.10498046875),
                    SPAWNPOINT = "IceCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Arctic Warrior [Lv. 1350]",
                    NameQ = "FrostQuest",
                    NumberQ = 1,
                    NameMon = "Arctic Warrior",
                    POSQ = CFrame.new(5667.66, 26.7998, -6486.09),
                    PM = CFrame.new(6018.197265625, 52.36618423461914, -6152.02978515625),
                    SPAWNPOINT = "IceCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1425 or lv <= 1449 then
            return {
                {
                    Mon = "Sea Soldier [Lv. 1425]",
                    NameQ = "ForgottenQuest",
                    NumberQ = 1,
                    NameMon = "Sea Soldier",
                    POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                    PM = CFrame.new(-3029.514892578125, 68.64163970947266, -9778.5986328125),
                    SPAWNPOINT = "ForgottenIsland",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv >= 1450 then
            return {
                {
                    Mon = "Water Fighter [Lv. 1450]",
                    NameQ = "ForgottenQuest",
                    NumberQ = 2,
                    NameMon = "Water Fighter",
                    POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                    PM = CFrame.new(-3271.4951171875, 295.032958984375, -10612.0966796875),
                    SPAWNPOINT = "ForgottenIsland",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Sea Soldier [Lv. 1425]",
                    NameQ = "ForgottenQuest",
                    NumberQ = 1,
                    NameMon = "Sea Soldier",
                    POSQ = CFrame.new(-3054.44, 235.544, -10142.8),
                    PM = CFrame.new(-3029.514892578125, 68.64163970947266, -9778.5986328125),
                    SPAWNPOINT = "ForgottenIsland",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        end
    end
    if ThirdWorld then
        if lv == 1500 or lv <= 1524 then
            return {
                {
                    Mon = "Pirate Millionaire [Lv. 1500]",
                    NameQ = "PiratePortQuest",
                    NumberQ = 1,
                    NameMon = "Pirate Millionaire",
                    POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                    PM = CFrame.new(-299.81500244140625, 56.6715202331543, 5610.4716796875),
                    SPAWNPOINT = "Default",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1525 or lv <= 1574 then
            return {
                {
                    Mon = "Pistol Billionaire [Lv. 1525]",
                    NameQ = "PiratePortQuest",
                    NumberQ = 2,
                    NameMon = "Pistol Billionaire",
                    POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                    PM = CFrame.new(-334.3323059082031, 114.3218994140625, 5982.6298828125),
                    SPAWNPOINT = "Default",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Pirate Millionaire [Lv. 1500]",
                    NameQ = "PiratePortQuest",
                    NumberQ = 1,
                    NameMon = "Pirate Millionaire",
                    POSQ = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627),
                    PM = CFrame.new(-299.81500244140625, 56.6715202331543, 5610.4716796875),
                    SPAWNPOINT = "Default",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1575 or lv <= 1599 then
            return {
                {
                    Mon = "Dragon Crew Warrior [Lv. 1575]",
                    NameQ = "AmazonQuest",
                    NumberQ = 1,
                    NameMon = "Dragon Crew Warrior",
                    POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                    PM = CFrame.new(6416.8759765625, 101.48655700683594, -1390.7337646484375),
                    SPAWNPOINT = "Hydra3",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1600 or lv <= 1624 then
            return {
                {
                    Mon = "Dragon Crew Archer [Lv. 1600]",
                    NameQ = "AmazonQuest",
                    NumberQ = 2,
                    NameMon = "Dragon Crew Archer",
                    POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                    PM = CFrame.new(6816.013671875, 433.237060546875, 419.8236389160156),
                    SPAWNPOINT = "Hydra3",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Dragon Crew Warrior [Lv. 1575]",
                    NameQ = "AmazonQuest",
                    NumberQ = 1,
                    NameMon = "Dragon Crew Warrior",
                    POSQ = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359),
                    PM = CFrame.new(6416.8759765625, 101.48655700683594, -1390.7337646484375),
                    SPAWNPOINT = "Hydra3",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1625 or lv <= 1649 then
            return {
                {
                    Mon = "Female Islander [Lv. 1625]",
                    NameQ = "AmazonQuest2",
                    NumberQ = 1,
                    NameMon = "Female Islander",
                    POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                    PM = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
                    SPAWNPOINT = "Hydra1",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1650 or lv <= 1699 then
            return {
                {
                    Mon = "Giant Islander [Lv. 1650]",
                    NameQ = "AmazonQuest2",
                    NumberQ = 2,
                    NameMon = "Giant Islander",
                    POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                    PM = CFrame.new(4870.81396484375, 669.9534912109375, 5.27170991897583),
                    SPAWNPOINT = "Hydra1",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Female Islander [Lv. 1625]",
                    NameQ = "AmazonQuest2",
                    NumberQ = 1,
                    NameMon = "Female Islander",
                    POSQ = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                    PM = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
                    SPAWNPOINT = "Hydra1",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1700 or lv <= 1724 then
            return {
                {
                    Mon = "Marine Commodore [Lv. 1700]",
                    NameQ = "MarineTreeIsland",
                    NumberQ = 1,
                    NameMon = "Marine Commodore",
                    POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                    PM = CFrame.new(2436.56689453125, 139.19039916992188, -7547.88330078125),
                    SPAWNPOINT = "GreatTree",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1725 or lv <= 1774 then
            return {
                {
                    Mon = "Marine Rear Admiral [Lv. 1725]",
                    NameQ = "MarineTreeIsland",
                    NumberQ = 2,
                    NameMon = "Marine Rear Admiral",
                    POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                    PM = CFrame.new(3397.01611328125, 160.5498504638672, -6918.708984375),
                    SPAWNPOINT = "GreatTree",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Marine Commodore [Lv. 1700]",
                    NameQ = "MarineTreeIsland",
                    NumberQ = 1,
                    NameMon = "Marine Commodore",
                    POSQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747),
                    PM = CFrame.new(2436.56689453125, 139.19039916992188, -7547.88330078125),
                    SPAWNPOINT = "GreatTree",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1775 or lv <= 1799 then
            return {
                {
                    Mon = "Fishman Raider [Lv. 1775]",
                    NameQ = "DeepForestIsland3",
                    NumberQ = 1,
                    NameMon = "Fishman Raider",
                    POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                    PM = CFrame.new(-10693.748046875, 438.3543701171875, -8366.546875),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1800 or lv <= 1824 then
            return {
                {
                    Mon = "Fishman Captain [Lv. 1800]",
                    NameQ = "DeepForestIsland3",
                    NumberQ = 2,
                    NameMon = "Fishman Captain",
                    POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                    PM = CFrame.new(-10737.0244140625, 397.7919006347656, -9101.337890625),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Fishman Raider [Lv. 1775]",
                    NameQ = "DeepForestIsland3",
                    NumberQ = 1,
                    NameMon = "Fishman Raider",
                    POSQ = CFrame.new(-10581.7, 330.873, -8761.19),
                    PM = CFrame.new(-10693.748046875, 438.3543701171875, -8366.546875),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1825 or lv <= 1849 then
            return {
                {
                    Mon = "Forest Pirate [Lv. 1825]",
                    NameQ = "DeepForestIsland",
                    NumberQ = 1,
                    NameMon = "Forest Pirate",
                    POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                    PM = CFrame.new(-13464.2880859375, 415.4747009277344, -7808.31787109375),
                    SPAWNPOINT = "BigMansion",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1850 or lv <= 1899 then
            return {
                {
                    Mon = "Mythological Pirate [Lv. 1850]",
                    NameQ = "DeepForestIsland",
                    NumberQ = 2,
                    NameMon = "Mythological Pirate",
                    POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                    PM = CFrame.new(-13508.912109375, 583.1074829101562, -6987.1025390625),
                    SPAWNPOINT = "BigMansion",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Forest Pirate [Lv. 1825]",
                    NameQ = "DeepForestIsland",
                    NumberQ = 1,
                    NameMon = "Forest Pirate",
                    POSQ = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247),
                    PM = CFrame.new(-13464.2880859375, 415.4747009277344, -7808.31787109375),
                    SPAWNPOINT = "BigMansion",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1900 or lv <= 1924 then
            return {
                {
                    Mon = "Jungle Pirate [Lv. 1900]",
                    NameQ = "DeepForestIsland2",
                    NumberQ = 1,
                    NameMon = "Jungle Pirate",
                    POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                    PM = CFrame.new(-11851.4912109375, 405.8158874511719, -10458.501953125),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1925 or lv <= 1974 then
            return {
                {
                    Mon = "Musketeer Pirate [Lv. 1925]",
                    NameQ = "DeepForestIsland2",
                    NumberQ = 2,
                    NameMon = "Musketeer Pirate",
                    POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                    PM = CFrame.new(-13479.5849609375, 427.251708984375, -9849.0517578125),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Jungle Pirate [Lv. 1900]",
                    NameQ = "DeepForestIsland2",
                    NumberQ = 1,
                    NameMon = "Jungle Pirate",
                    POSQ = CFrame.new(-12680.4, 389.971, -9902.02),
                    PM = CFrame.new(-11851.4912109375, 405.8158874511719, -10458.501953125),
                    SPAWNPOINT = "PineappleTown",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 1975 or lv <= 1999 then
            return {
                {
                    Mon = "Reborn Skeleton [Lv. 1975]",
                    NameQ = "HauntedQuest1",
                    NumberQ = 1,
                    NameMon = "Reborn Skeleton",
                    POSQ = CFrame.new(-9479.22, 141.215, 5566.09),
                    PM = CFrame.new(-8761.8017578125, 166.1067657470703, 6159.306640625),
                    SPAWNPOINT = "HauntedCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2000 or lv <= 2024 then
            return {
                {
                    Mon = "Living Zombie [Lv. 2000]",
                    NameQ = "HauntedQuest1",
                    NumberQ = 2,
                    NameMon = "Living Zombie",
                    POSQ = CFrame.new(-9479.22, 141.215, 5566.09),
                    PM = CFrame.new(-10094.619140625, 238.80612182617188, 6178.86328125),
                    SPAWNPOINT = "HauntedCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2025 or lv <= 2049 then
            return {
                {
                    Mon = "Demonic Soul [Lv. 2025]",
                    NameQ = "HauntedQuest2",
                    NumberQ = 1,
                    NameMon = "Demonic Soul",
                    POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                    PM = CFrame.new(-9375.7197265625, 222.93064880371094, 6226.025390625),
                    SPAWNPOINT = "HauntedCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2050 or lv <= 2074 then
            return {
                {
                    Mon = "Posessed Mummy [Lv. 2050]",
                    NameQ = "HauntedQuest2",
                    NumberQ = 2,
                    NameMon = "Posessed Mummy",
                    POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                    PM = CFrame.new(-9739.19921875, 64.7591781616211, 6146.671875),
                    SPAWNPOINT = "HauntedCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Demonic Soul [Lv. 2025]",
                    NameQ = "HauntedQuest2",
                    NumberQ = 1,
                    NameMon = "Demonic Soul",
                    POSQ = CFrame.new(-9516.99, 172.017, 6078.47),
                    PM = CFrame.new(-9375.7197265625, 222.93064880371094, 6226.025390625),
                    SPAWNPOINT = "HauntedCastle",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2075 or lv <= 2099 then
            return {
                {
                    Mon = "Peanut Scout [Lv. 2075]",
                    NameQ = "NutsIslandQuest",
                    NumberQ = 1,
                    NameMon = "Peanut Scout",
                    POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                    PM = CFrame.new(-2156.643310546875, 35.747806549072266, -9993.7578125),
                    SPAWNPOINT = "Peanut",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2100 or lv <= 2124 then
            return {
                {
                    Mon = "Peanut President [Lv. 2100]",
                    NameQ = "NutsIslandQuest",
                    NumberQ = 2,
                    NameMon = "Peanut President",
                    POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                    PM = CFrame.new(-2208.377685546875, 140.69236755371094, -10538.0849609375),
                    SPAWNPOINT = "Peanut",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Peanut Scout [Lv. 2075]",
                    NameQ = "NutsIslandQuest",
                    NumberQ = 1,
                    NameMon = "Peanut Scout",
                    POSQ = CFrame.new(-2105.53, 37.2496, -10195.5),
                    PM = CFrame.new(-2156.643310546875, 35.747806549072266, -9993.7578125),
                    SPAWNPOINT = "Peanut",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2125 or lv <= 2149 then
            return {
                {
                    Mon = "Ice Cream Chef [Lv. 2125]",
                    NameQ = "IceCreamIslandQuest",
                    NumberQ = 1,
                    NameMon = "Ice Cream Chef",
                    POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                    PM = CFrame.new(-804.8463134765625, 210.32603454589844, -10976.359375),
                    SPAWNPOINT = "IceCream",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2150 or lv <= 2199 then
            return {
                {
                    Mon = "Ice Cream Commander [Lv. 2150]",
                    NameQ = "IceCreamIslandQuest",
                    NumberQ = 2,
                    NameMon = "Ice Cream Commander",
                    POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                    PM = CFrame.new(-578.7010498046875, 199.70787048339844, -11290.943359375),
                    SPAWNPOINT = "IceCream",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Ice Cream Chef [Lv. 2125]",
                    NameQ = "IceCreamIslandQuest",
                    NumberQ = 1,
                    NameMon = "Ice Cream Chef",
                    POSQ = CFrame.new(-819.377, 64.926, -10967.3),
                    PM = CFrame.new(-804.8463134765625, 210.32603454589844, -10976.359375),
                    SPAWNPOINT = "IceCream",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2200 or lv <= 2224 then
            return {
                {
                    Mon = "Cookie Crafter [Lv. 2200]",
                    NameQ = "CakeQuest1",
                    NumberQ = 1,
                    NameMon = "Cookie Crafter",
                    POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                    PM = CFrame.new(-2272.905517578125, 90.25160217285156, -12149.7080078125),
                    SPAWNPOINT = "Loaf",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2225 or lv <= 2249 then
            return {
                {
                    Mon = "Cake Guard [Lv. 2225]",
                    NameQ = "CakeQuest1",
                    NumberQ = 2,
                    NameMon = "Cake Guard",
                    POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                    PM = CFrame.new(-1483.501220703125, 144.16310119628906, -12205.408203125),
                    SPAWNPOINT = "Loaf",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Cookie Crafter [Lv. 2200]",
                    NameQ = "CakeQuest1",
                    NumberQ = 1,
                    NameMon = "Cookie Crafter",
                    POSQ = CFrame.new(-2022.3, 36.9276, -12031),
                    PM = CFrame.new(-2272.905517578125, 90.25160217285156, -12149.7080078125),
                    SPAWNPOINT = "Loaf",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2250 or lv <= 2274 then
            return {
                {
                    Mon = "Baking Staff [Lv. 2250]",
                    NameQ = "CakeQuest2",
                    NumberQ = 1,
                    NameMon = "Baking Staff",
                    POSQ = CFrame.new(-1928.32, 37.7297, -12840.6),
                    PM = CFrame.new(-1922.0404052734375, 104.48565673828125, -12808.5302734375),
                    SPAWNPOINT = "Loaf",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2275 or lv <= 2299 then   
            return {
                {
                    Mon = "Head Baker [Lv. 2275]",
                    NameQ = "CakeQuest2",
                    NumberQ = 2,
                    NameMon = "Head Baker",
                    POSQ = CFrame.new(-1928.32, 37.7297, -12840.6),
                    PM = CFrame.new(-2294.600830078125, 99.4260482788086, -12828.8955078125),
                    SPAWNPOINT = "Loaf",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2300 or lv <= 2324 then   
            return {
                {
                    Mon = "Cocoa Warrior [Lv. 2300]",
                    NameQ = "ChocQuest1",
                    NumberQ = 1,
                    NameMon = "Cocoa Warrior",
                    POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                    PM = CFrame.new(124.36067199707031, 146.2567596435547, -12174.5439453125),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2325 or lv <= 2349 then
            return {
                {
                    Mon = "Chocolate Bar Battler [Lv. 2325]",
                    NameQ = "ChocQuest1",
                    NumberQ = 2,
                    NameMon = "Chocolate Bar Battler",
                    POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                    PM = CFrame.new(701.0734252929688, 194.59474182128906, -12370.490234375),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Cocoa Warrior [Lv. 2300]",
                    NameQ = "ChocQuest1",
                    NumberQ = 1,
                    NameMon = "Cocoa Warrior",
                    POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                    PM = CFrame.new(124.36067199707031, 146.2567596435547, -12174.5439453125),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2350 or lv <= 2374 then
            return {
                {
                    Mon = "Sweet Thief [Lv. 2350]",
                    NameQ = "ChocQuest2",
                    NumberQ = 1,
                    NameMon = "Sweet Thief",
                    POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                    PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Chocolate Bar Battler [Lv. 2325]",
                    NameQ = "ChocQuest1",
                    NumberQ = 2,
                    NameMon = "Chocolate Bar Battler",
                    POSQ = CFrame.new(232.03175354003906, 24.760034561157227, -12198.2646484375),
                    PM = CFrame.new(701.0734252929688, 194.59474182128906, -12370.490234375),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        elseif lv == 2375 or lv <= 2400 then
            return {
                {
                    Mon = "Candy Rebel [Lv. 2375]",
                    NameQ = "ChocQuest2",
                    NumberQ = 2,
                    NameMon = "Candy Rebel",
                    POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                    PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                },
                {
                    Mon = "Sweet Thief [Lv. 2350]",
                    NameQ = "ChocQuest2",
                    NumberQ = 1,
                    NameMon = "Sweet Thief",
                    POSQ = CFrame.new(149.96730041503906, 24.81962013244629, -12775.3447265625),
                    PM = CFrame.new(-126.31912994384766, 88.32859802246094, -12870.6083984375),
                    SPAWNPOINT = "Chocolate",
                    Warp = {
                        Use = false,
                        Position =  nil,
                        Magnet = nil
                    }
                }
            }
        end
    end
end

if not syn then isnetworkowner = function() return true end end
getgenv().BringMobs = function(F, z)
    PosMon = F
    NameMon = z
end
spawn(function()
    while task.wait() do
        pcall(function()
            if PosMon then
                LV()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == NameMon and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Don Swan [Lv. 3000] [Boss]" and v.Name ~= "Saber Expert [Lv. 200] [Boss]" and v.Name ~= "Longma [Lv. 2000] [Boss]" and  v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 240 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end
end)

function GetQuest(NameQuest,LevelQuest)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
end
function QuestVisible()
    return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
end

spawn(function()
    while wait() do 
        pcall(function()
            _G.DistanceFarm = CFrame.new(_G.DisX,_G.DisY,_G.DisZ)
        end)
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.FarmLevel then
                for i,v in pairs(LV()) do 
                    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.NameMon) then
                        MagnetFarm = false       
                        _G.FastAttack = false                                  
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    repeat wait()
                        if v.Warp.Use then 
                            if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            end
                        end 
                        if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                            if not QuestVisible() then 
                                wait(.75)
                                GetQuest(v.NameQ,v.NumberQ)
                            else 
                                if game:GetService("Workspace").Enemies:FindFirstChild(v.Mon) then
                                    for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if z.Name == v.Mon then
                                            if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                                if z.Humanoid.Health > 0 then
                                                    repeat task.wait()
                                                        EquipWeapon(_G.Setting.SelectWeapon)
                                                        Buso()
                                                        z.HumanoidRootPart.CanCollide = false
                                                        z.Head.CanCollide = false
                                                        z.Humanoid.WalkSpeed = 0
                                                        topos(z.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                        MagnetFarm = true
                                                        _G.FastAttack = true
                                                        PosMon = z.HumanoidRootPart.CFrame
                                                        BringMobs(PosMon,z.Name)
                                                    until z.Humanoid.Health <= 0 or not z:FindFirstChild("Humanoid") or _G.Setting.FarmLevel == false or not z:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false 
                                                end
                                            end
                                        end
                                    end
                                else
                                    MagnetFarm = false
                                    _G.FastAttack = false
                                    _G.StopFarm = true
                                    if game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon) then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    else
                                        topos(v.PM)
                                    end
                                end
                            end
                        else 
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health = die
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                local args = {
                                    [1] = "SetLastSpawnPoint",
                                    [2] = v.SPAWNPOINT
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                            until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or not _G.Setting.FarmLevel
                        end
                    until not QuestVisible() or not _G.Setting.FarmLevel
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.FarmLevel then
                BodyClip()
                _G.Noclip = true
                Buso()
            end
        end)
    end
end)
function Hop()
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(Servers.data) do
        if v.playing ~= v.maxPlayers then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
end
spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.SecondSea then 
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    BodyClip() 
                    _G.Noclip = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    if game:GetService("Workspace").Map.Ice.Door.CanCollide == true and game:GetService("Workspace").Map.Ice.Door.Transparency == 0 then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                            topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            EquipWeapon("Key")
                        elseif not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Key") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Key") then
                            topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                            if (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            end
                        end
                    elseif game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                            topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                        repeat wait()
                                            Buso()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                        until v.Humanoid.Health <= 0  or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            end
                        else
                            _G.FastAttack = false
                            Hop()
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.AutoThirdSea then 
                if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
                    BodyClip()
                    _G.Noclip = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                    _G.Noclip = true
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor") == nil then
                        _G.FarmLevel = false                        
                        LoadFruit()
                        _G.Setting.GrabFruit = true
                        wait(10)
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soul Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
                            wait(.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
                        else
                            while wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Don Swan [Lv. 1000] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                        until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting.AutoThirdWorld
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then    
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]").HumanoidRootPart.CFrame)
                        else
                            while wait() do
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") ~= 3 then
                        if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate [Lv. 775]" then
                                            repeat task.wait()
                                                EquipWeapon(_G.Setting.SelectWeapon)
                                                Buso()
                                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Transparency = 1
                                                _G.FastAttack = true
                                                BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                            until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting.AutoThirdWorld
                                        end
                                    end
                                else 
                                    topos(CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125))
                                end
                            else
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                            end
                        elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            wait(0.75)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                            if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                repeat task.wait()
                                    Mob = game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    Buso()
                                    topos(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,15))
                                    Mob.Character.HumanoidRootPart.CanCollide = false
                                    Mob.Character.HumanoidRootPart.Transparency = 1
                                    _G.FastAttack = true
                                    BringMobs(Mob.Character.HumanoidRootPart.CFrame, Mob.Name)
                                until Mob.Humanoid.Health <= 0 or not Mob.Parent or not _G.Setting.AutoThirdWorld
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                topos(CFrame.new(1958.5858154297, 448.94882202148, 879.37573242188))
                            else 
                                while wait() do 
                                    pcall(function()
                                        Hop()
                                    end)
                                end
                            end
                        elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame,0)
                            wait(.3)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame,0)
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            if _G.Noclip then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)
function StopAllFunction(value)
    if not value then 
        if _G.FastAttack and _G.Setting.FastAttack then
            repeat wait()
                _G.FastAttack = false
            until not _G.FastAttack
        end
        if _G.Noclip then
            repeat wait()
                _G.Noclip = false
            until not _G.Noclip 
        end
        topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
        if _G.Tween then
            _G.Tween:Cancel()
        end
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Normal Hub") then
            repeat wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Normal Hub"):Destroy()
            until not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Normal Hub")
        end
    end
end
getgenv().CheckItemer = function(NamePara)
    for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("getInventory")) do
        if v.Name == NamePara then  
            if v.Count then
                return v.Count
            else
                return true
            end
        end
    end
    return false
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoGodHuman then
                BodyClip()
                _G.Noclip = true
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) == "Bring me 20 Fish Tails, 20 Magma Ore, 10 Dragon Scales and 10 Mystic Droplets." then
                    if getgenv().CheckItemer("Dragon Scale") == false or getgenv().CheckItemer("Dragon Scale") < 10 then
                        if ThirdWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1575
                            _G.Setting.FarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif getgenv().CheckItemer("Fish Tail") == false or getgenv().CheckItemer("Fish Tail") < 20 then
                        if ThirdWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1775
                            _G.Setting.FarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                        end
                    elseif getgenv().CheckItemer("Mystic Droplet") == false or getgenv().CheckItemer("Mystic Droplet") < 10 then
                        if NewWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1425
                            _G.Setting.FarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    elseif getgenv().CheckItemer("Magma Ore") == false or getgenv().CheckItemer("Magma Ore") < 20 then
                        if NewWorld then
                            game.Players.LocalPlayer.Data.Level.Value = 1175
                            _G.Setting.FarmLevel = true
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end  
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) == 3 then
                    notiy("มาสยังไม่ครบทุกหมัด",5)
                    wait(5)
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoDragonTalon then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.Setting.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        _G.Setting.SelectWeapon = "Dragon Talon"
                    end  
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        _G.Setting.SelectWeapon = "Dragon Claw"
                    end 
                else 
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoElectricClaw then
                BodyClip()
                _G.Noclip = true
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) then
                        if _G.Setting.FarmLevel then
                            StartFarmLevel = true
                            _G.Setting.FarmLevel = false
                        end
                        if not game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 0 then
                            topos(CFrame.new(-10367.8867, 331.654175, -10127.2871, 0.788523614, -3.46319879e-08, 0.61500448, -2.7930358e-09, 1, 5.98928338e-08, -0.61500448, -4.89446457e-08, 0.788523614))
                            if (CFrame.new(-10367.8867, 331.654175, -10127.2871, 0.788523614, -3.46319879e-08, 0.61500448, -2.7930358e-09, 1, 5.98928338e-08, -0.61500448, -4.89446457e-08, 0.788523614).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(1.5)
                                topos(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",false) == 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            end
                            if StartFarmLevel then
                                _G.Setting.FarmLevel = true
                                StartFarmLevel = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    wait(0.3)
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 then
                    if game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
                        RaidSuperhumanFully = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                    else 
                        RaidSuperhumanFully = true
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySuperhuman")
                    wait(0.3)
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    notiy("ได้ Superrhuman แล้ว",5)
                    wait(5)
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
            end
        end)
    end
end)
function notiy(NameText,Sec)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Normal Hub Script",
        Text = tostring(NameText),
        Icon = "rbxassetid://10931454122",
        Duration = Sec,
    })
end
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoSharkmanKarate then
                BodyClip()
                _G.Noclip = true
                if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true), "key") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                        if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",false)
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") and NewWorld then
                                    topos(CFrame.new(-3552.217529296875, 168.43704223632812, -11451.408203125))
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
                                            repeat wait()
                                                Buso()
                                                EquipWeapon(_G.Setting.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                _G.FastAttack = true
                                                if v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not _G.Setting.AutoSharkmanKarate or v.Humanoid.Health <= 0
                                        end
                                    end
                                else
                                    _G.FastAttack = false
                                    while wait() do
                                        pcall(function()
                                            Hop()
                                        end)
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            end
        end)
    end
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoDeathStep then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                else
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                        if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value > 399) or (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value > 399) then
                            if game:GetService("Workspace").Map.IceCastle.Hall:FindFirstChild("LibraryDoor") and NewWorld then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Library Key") or game.Players.LocalPlayer.Character:FindFirstChild("Library Key") then
                                    topos(CFrame.new(6377.0874, 296.634766, -6843.89404, -0.830482662, -6.71425937e-08, -0.557044506, -8.02240834e-08, 1, -9.29703592e-10, 0.557044506, 4.39162804e-08, -0.830482662))
                                else
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
                                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
                                                repeat wait()
                                                    Buso()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    if v.Humanoid:FindFirstChild("Animator") then
                                                        v.Humanoid.Animator:Destroy()
                                                    end	
                                                until not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or _G.Setting.AutoDeathStep == false or v.Humanoid.Health <= 0
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then	
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                    else
                                        while wait() do
                                            pcall(function()
                                                Hop()
                                            end)
                                        end
                                    end
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                    end
                end
            end
        end)
    end
end)
old = hookfunction(Instance.new("RemoteFunction").InvokeServer,function(...)
    args = {...}
    if tostring(args[1]) == "RemoteFunctionShoot" then
        if _G.Setting.AimbotGun == true then
            if _G.TargetPlayerAim ~= nil then
                args[2] =  game.Players[_G.TargetPlayerAim].Character.HumanoidRootPart.Position
                args[3] = game.Players[_G.TargetPlayerAim].Character.HumanoidRootPart
                return old(unpack(args))
            end
        elseif USEGUN then
            if PosMonMasteryGun and MonMasteryGun then
                args[2] = PosMonMasteryGun
                args[3] = MonMasteryGun
                return old(unpack(args))
            end
        end
    end
    return old(...)
end)

local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if _G.Setting.AimbotSkill == true then
                    if _G.TargetPlayerAim ~= nil then
                        args[2] =  game.Players[_G.TargetPlayerAim].Character.HumanoidRootPart.Position
                        return old(unpack(args))
                    end
                elseif USEBF then
                    if tostring(typeof(args[2])) == "CFrame" then
                        args[2] = PosMonMasteryFruit
                    elseif tostring(typeof(args[2])) == "Position" then
                        args[2] = PosMonMasteryFruit.Position
                    end
                    return old(unpack(args))
                else
                    args[2] = args[2]
                    return old(unpack(args))
                end
            end
        end
    end 
    return old(...)
end)

function PositionToCFrame(para)
    return CFrame.new(para.X,para.Y,para.Z)
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoFarmDFMastery then
                for i,v in pairs(LV()) do
                    repeat wait()
                        if v.Warp.Use then 
                            if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            end
                        end 
                        if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                            BodyClip()
                            _G.Noclip = true
                            if game:GetService("Workspace").Enemies:FindFirstChild(v.Mon) then
                                for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if z.Name == v.Mon then
                                        if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                            HealthMin = z.Humanoid.MaxHealth * _G.Setting.Health/100
                                            if z.Humanoid.Health >= HealthMin then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    Buso()
                                                    USEBF = false
                                                    topos(z.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    PosMonMasteryFruit = z.HumanoidRootPart.CFrame
                                                    namemon = z.Name
                                                    BringMobs(PositionToCFrame(PosMonMasteryFruit),namemon)
                                                until z.Humanoid.Health <= HealthMin or not _G.Setting.AutoFarmDFMastery or not z:FindFirstChild("Humanoid") or not z:FindFirstChild("HumanoidRootPart")
                                            else
                                                repeat task.wait()
                                                    BodyClip()
                                                    PosMonMasteryFruit = z.HumanoidRootPart.CFrame
                                                    _G.FastAttack = false
                                                    namemon = z.Name
                                                    topos(z.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                        USEBF = true
                                                    else
                                                        EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                    end
                                                    BringMobs(PositionToCFrame(PosMonMasteryFruit),namemon)
                                                until z.Humanoid.Health <= 0 or _G.Setting.AutoFarmDFMastery == false
                                            end
                                        end
                                    end
                                end
                            else
                                USEBF = false
                                MagnetFarm = false
                                _G.FastAttack = false
                                _G.StopFarm = true
                                if game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                else
                                    topos(v.PM)
                                end
                            end
                        else 
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health = die
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                local args = {
                                    [1] = "SetLastSpawnPoint",
                                    [2] = v.SPAWNPOINT
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                            until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or not _G.Setting.AutoFarmDFMastery
                        end
                    until not _G.Setting.AutoFarmDFMastery
                end
            else
                USEBF = false
            end
        end)
    end
end)
function CheckGun()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") and v.ToolTip == "Gun" then 
                GunWeapon = v.Name
            end
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            if v:FindFirstChild("RemoteFunctionShoot") and v.ToolTip == "Gun" then 
                GunWeapon = v.Name
            end
        end
    end
    return GunWeapon or "No Found"
end
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoFarmGunMastery then
                for i,v in pairs(LV()) do
                    repeat wait()
                        if v.Warp.Use then 
                            if (v.Warp.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > v.Warp.Magnet then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",v.Warp.Position)
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                            end
                        end 
                        if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or v.Warp.Use then
                            BodyClip()
                            _G.Noclip = true
                            if game:GetService("Workspace").Enemies:FindFirstChild(v.Mon) then
                                for x,z in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if z.Name == v.Mon then
                                        if z:FindFirstChild("Humanoid") and z:FindFirstChild("HumanoidRootPart") then
                                            HealthMin = z.Humanoid.MaxHealth * _G.Setting.Health/100
                                            if z.Humanoid.Health >= HealthMin then
                                                repeat task.wait()
                                                    BodyClip()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    Buso()
                                                    USEGUN = false
                                                    topos(z.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    PosMonMasteryGun = z.HumanoidRootPart.Position
                                                    MonMasteryGun = z.HumanoidRootPart
                                                    namemon = z.Name
                                                    BringMobs(PositionToCFrame(PosMonMasteryGun),namemon)
                                                until not _G.Setting.AutoFarmGunMastery or z.Humanoid.Health <= HealthMin or not z:FindFirstChild("Humanoid") or not z:FindFirstChild("HumanoidRootPart")
                                            else
                                                repeat task.wait()
                                                    BodyClip()
                                                    PosMonMasteryGun = z.HumanoidRootPart.Position
                                                    MonMasteryGun = z.HumanoidRootPart
                                                    _G.FastAttack = false
                                                    namemon = z.Name
                                                    USEGUN = true
                                                    topos(z.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    if game.Players.LocalPlayer.Character:FindFirstChild(CheckGun()) then
                                                        if _G.GunWeapon == CheckGun() then
                                                            local args = {
                                                                [1] = "TAP",
                                                                [2] = z.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character.Humanoid:FindFirstChild(""):InvokeServer(unpack(args))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                        end
                                                    else
                                                        EquipWeapon(CheckGun())
                                                    end
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                                    BringMobs(PositionToCFrame(PosMonMasteryGun),namemon)
                                                until z.Humanoid.Health <= 0 or not _G.Setting.AutoFarmGunMastery
                                            end
                                        end
                                    end
                                end
                            else
                                MagnetFarm = false
                                _G.FastAttack = false
                                _G.StopFarm = true
                                if game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon) then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild(v.Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                else
                                    topos(v.PM)
                                end
                            end
                        else 
                            repeat task.wait()
                                game.Players.LocalPlayer.Character.Humanoid.Health = die
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                                wait()
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                local args = {
                                    [1] = "SetLastSpawnPoint",
                                    [2] = v.SPAWNPOINT
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.POSQ
                            until game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == v.SPAWNPOINT or not _G.Setting.AutoFarmGunMastery
                        end
                    until not _G.Setting.AutoFarmGunMastery
                end
            else
                USEGUN = false
            end
        end)
    end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.StopGodChalice and _G.Setting.EliteHunter then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    _G.Setting.EliteHunter = false
                    _G.Setting.EliteHunterHop = false
                end
            end
        end)
    end
end)

function QuestVis()
    return game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoEliteHunter then
                BodyClip()
                _G.Noclip = true
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                    if not QuestVis() then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    elseif QuestVis() then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            Buso()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            _G.FastAttack = true
                                            if v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until _G.Setting.EliteHunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end 
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                            end
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]")  then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                            end
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]")  then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,25,5))
                            end
                        end
                    end
                else
                    if _G.Setting.StopGodChalice and _G.Setting.EliteHunter and _G.Setting.EliteHunterHop then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                            --noting
                        else
                            while wait() do 
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    else
                        if _G.Setting.EliteHunterHop then
                            while wait() do 
                                pcall(function()
                                    Hop()
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Main1:AddLabel(""..os.date("%d ")..os.date("%A ")..os.date("%B ")..os.date("%Y"))

Main1:AddSeperator("Auto Farm More")

Main1:AddToggle("Auto Farm Level",2790176032,_G.Setting.FarmLevel,function(value)
    _G.Setting.FarmLevel = value
    StopAllFunction(_G.Setting.FarmLevel)
end)

Main1:AddToggle("Auto Second Sea",2790176032,_G.Setting.SecondSea,function(value)
    _G.Setting.SecondSea = value
    StopAllFunction(_G.Setting.SecondSea)
end)

Main1:AddToggle("Auto Third Sea",2790176032,_G.Setting.AutoThirdSea,function(value)
    _G.Setting.AutoThirdSea = value
    StopAllFunction(_G.Setting.AutoThirdSea)
end)

Main1:AddSeperator("Fighting Style")

Main1:AddToggle("Auto GodHuman",2790176032,_G.Setting.AutoGodHuman,function(value)
    _G.Setting.AutoGodHuman = value
    StopAllFunction(_G.Setting.AutoGodHuman)
end)

Main1:AddToggle("Auto Dragon Talon",2790176032,_G.Setting.AutoDragonTalon,function(value)
    _G.Setting.AutoDragonTalon = value
    StopAllFunction(_G.Setting.AutoDragonTalon)
end)

Main1:AddToggle("Auto Electric Claw",2790176032,_G.Setting.AutoElectricClaw,function(value)
    _G.Setting.AutoElectricClaw = value
    StopAllFunction(_G.Setting.AutoElectricClaw)
end)

Main1:AddToggle("Auto Superhuman",2790176032,_G.Setting.AutoSuperhuman,function(value)
    _G.Setting.AutoSuperhuman = value
    StopAllFunction(_G.Setting.AutoSuperhuman)
end)

Main1:AddToggle("Auto Shark man",2790176032,_G.Setting.AutoSharkmanKarate,function(value)
    _G.Setting.AutoSharkmanKarate = value
    StopAllFunction(_G.Setting.AutoSharkmanKarate)
end)

Main1:AddToggle("Auto DeathStep",2790176032,_G.Setting.AutoDeathStep,function(value)
    _G.Setting.AutoDeathStep = value
    StopAllFunction(_G.Setting.AutoDeathStep)
end)

Main1:AddSeperator("Farm Mastery")

Main1:AddToggle("Auto Farm Fruit \n [ Mastery ]",2790176032,_G.Setting.AutoFarmDFMastery,function(value)
    _G.Setting.AutoFarmDFMastery = value
    StopAllFunction(_G.Setting.AutoFarmDFMastery)
end)

Main1:AddToggle("Auto Farm Gun \n [ Mastery ]",2790176032,_G.Setting.AutoFarmGunMastery,function(value)
    _G.Setting.AutoFarmGunMastery = value
    StopAllFunction(_G.Setting.AutoFarmGunMastery)
end)

Main1:AddSlider("Health At",1,100,50,function(value)
    _G.Setting.Health = value
end)

Main1:AddSeperator("Elite Hunter")

local SetELS = Main1:AddLabel("Elite Spawn : ❌")

local SetEL = Main1:AddLabel(" : ")

Main1:AddToggle("Auto Elite Hunter",2790176032,_G.Setting.AutoEliteHunter,function(value)
    _G.Setting.AutoEliteHunter = value
    StopAllFunction(_G.Setting.AutoEliteHunter)
end)

Main1:AddToggle("Auto Elite Hunter\n[ Hop ]",2790176032,_G.Setting.AutoEliteHunterHop,function(value)
    _G.Setting.AutoEliteHunterHop = value
end)

Main1:AddToggle("  Stop At God's Chalice",2790176032,_G.Setting.StopGodChalice,function(value)
    _G.Setting.StopGodChalice = value
end)

Main1:AddSlider("Lock Elite Hunter",1,100,30,function(value)
    _G.Setting.LockEliteHunter = value
end)

Main1:AddToggle("Lock Elite Hunter",2790176032,_G.Setting.LockEliteHuntertrue,function(value)
    _G.Setting.LockEliteHuntertrue = value
end)
function eltiepg()
    return game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
end
spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.LockEliteHuntertrue then
                if eltiepg() >= _G.Setting.LockEliteHunter then
                    game.Players.LocalPlayer:Kick("Complete Farm")
                end
            end
        end)
    end
end)
Main1:AddSeperator("Bosses")
function GetBoss()
    Bosses = {}
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v:IsA("Model") then
            if v.Name:find("Boss") then
                table.insert(Bosses,v.Name) 
            end
        end
    end
    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if v:IsA("Model") then
            if v.Name:find("Boss") then
                table.insert(Bosses,v.Name) 
            end
        end
    end
    return Bosses
end

local BossSelect = Main1:AddDropdown("Select Boss",GetBoss(),function(value)
    _G.Setting.SelectBoss = value
end)
Main1:AddButton("Refresh Boss",7040347038,function()
    BossSelect:Clear()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v:IsA("Model") then
                if v.Name:find("Boss") then
                    BossSelect:Add(v.Name) 
                end
            end
        end
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if v:IsA("Model") then
                if v.Name:find("Boss") then
                    BossSelect:Add(v.Name) 
                end
            end
        end
    end)
end)
Main1:AddToggle("Auto Farm Boss",2790176032,_G.Setting.AutoFarmBoss,function(value)
    _G.Setting.AutoFarmBoss = value
    spawn(function()
        repeat task.wait()
            AutoFarmBoss(_G.Setting.SelectBoss,{Use=false},"AutoFarmBossHop","AutoFarmBoss",false)
        until _G.Setting.AutoFarmBoss == false
        StopAllFunction(_G.Setting.AutoFarmBoss)
    end)
end)

Main1:AddToggle("Auto Farm Boss\n[Hop]",2790176032,_G.Setting.AutoFarmBossHop,function(value)
    _G.Setting.AutoFarmBossHop = value
end)
function Entrance(Use,Magnet)
    if (Use - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= Magnet then
        local args = {
            [1] = "requestEntrance",
            [2] = Use
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end 
end
function FindMon(UseFind,NameBoss)
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if (UseFind) then
            if v.Name:find(NameBoss) then
                FindMonFirst = true
            end
        else
            if v.Name == NameBoss then
                FindMonFirst = true
            end
        end
    end
    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
        if (UseFind) then
            if v.Name:find(NameBoss) then
                FindMonFirst = true
            end
        else
            if v.Name == NameBoss then
                FindMonFirst = true
            end
        end
    end
    return FindMonFirst
end
function FindMobBoss(UseFind,NameBoss)
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if (UseFind) then
            if v.Name:find(NameBoss) then
                FindMonFirst = v
            end
        else
            if v.Name == NameBoss then
                FindMonFirst = v
            end
        end
    end
    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
        if (UseFind) then
            if v.Name:find(NameBoss) then
                FindMonFirst = v
            end
        else
            if v.Name == NameBoss then
                FindMonFirst = v
            end
        end
    end
    return FindMonFirst
end
function AutoFarmBoss(NameBoss,Warp,IndexHop,Index,UseFind)
    BodyClip()
    _G.Noclip = true
    if FindMon(UseFind,NameBoss) then
        if Warp.Use then
            Entrance(Warp.Vector,Warp.Magnet)
        end
    end
    do 
        v = FindMobBoss(UseFind,NameBoss)
        if v then
            if v.Name == NameBoss then
                if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                    if v.Humanoid.Health > 0 then
                        repeat task.wait()
                            EquipWeapon(_G.Setting.SelectWeapon)
                            Buso()
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                            MagnetFarm = true
                            _G.FastAttack = true
                        until v.Humanoid.Health <= 0 or not _G.Setting[Index]
                    end
                end
            end
        else 
            if _G.Setting[IndexHop] then
                while wait() do
                    pcall(function()
                        Hop()
                    end)
                end
            end
        end
    end
end
function CheckCakePiece()
    local Text = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true):split(">")
    local RealText = ""
    local List = #Text
    Is = true
    table.remove(Text,1)
    table.remove(Text,#Text)
    for i=1,#Text do local v = Text[i]
        RealText = RealText..v
        if #Text ~= 1 then  
            RealText = RealText.." "
        end
    end
    if Is then  
        RealText = RealText:sub(0,#RealText-8)
    end
    if RealText == "" then
        RealText = "Opening"
    end
    return RealText
end
Main1:AddSeperator("Cake Piece")

local SetPR = Main1:AddLabel("Portal : ")
spawn(function()
    while wait() do 
        pcall(function()
            if _G.Setting.AutoCakePiece then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then 
                    if CheckCakePiece() == "Do you want to open the portal now?" and _G.Setting.AutoSpawnCakePiece then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            Buso()
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Transparency = 1
                                            _G.FastAttack = true
                                            MagnetCandies = true
                                            PosCake = v.HumanoidRootPart.CFrame
                                            SettingMagnet = "AutoFarmCandiesMagnet"
                                            BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                        until _G.Setting.CakePiece == false or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
                                    end
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.ReplicatedStorage:FindFirstChild("Cake Guard [Lv. 2225]") or game.ReplicatedStorage:FindFirstChild("Baking Staff [Lv. 2250]") or game.ReplicatedStorage:FindFirstChild("Head Baker [Lv. 2275]") then
                            MagnetCandies = false
                            _G.FastAttack = false
                            for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                    topos(v.HumanoidRootPart.CFrame)
                                end 
                            end
                        else
                            topos(CFrame.new(-1617.8350830078125, 195.68605041503906, -12313.9306640625))
                        end
                    end
                elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                    if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            topos(game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.CFrame)
                        else
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then 
                                    repeat task.wait()
                                        if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                            break
                                        end
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        Buso()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        _G.FastAttack = true
                                        MagnetCandies = false
                                    until _G.Setting.CakePiece == false  or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.CakePieceDFFarm then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then 
                    if CheckCakePiece() == "Do you want to open the portal now?" and _G.Setting.SpawnCakePiece then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                    HealthMin = v.Humanoid.MaxHealth * _G.Setting.Health/100
                                    if v.Humanoid.Health >= HealthMin then
                                        repeat task.wait()
                                            BodyClip()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            Buso()
                                            USEBF = false
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,-15))
                                            _G.FastAttack = true
                                            PosMonMasteryFruit = v.HumanoidRootPart.Position
                                            namemon = v.Name
                                            BringMobs(PositionToCFrame(PosMonMasteryFruit),namemon)
                                        until not _G.Setting.CakePieceDFFarm or v.Humanoid.Health <= 0 or not z:FindFirstChild("Humanoid") or not z:FindFirstChild("HumanoidRootPart")
                                    else
                                        repeat task.wait()
                                            BodyClip()
                                            PosMonMasteryFruit = v.HumanoidRootPart.Position
                                            _G.FastAttack = false
                                            namemon = v.Name
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,-15))
                                            if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                USEBF = true
                                            else
                                                EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                            end
                                            BringMobs(PositionToCFrame(PosMonMasteryFruit),namemon)
                                        until v.Humanoid.Health <= 0 or _G.Setting.CakePieceDFFarm == false
                                    end
                                end
                            end
                        elseif game.ReplicatedStorage:FindFirstChild("Cookie Crafter [Lv. 2200]") or game.ReplicatedStorage:FindFirstChild("Cake Guard [Lv. 2225]") or game.ReplicatedStorage:FindFirstChild("Baking Staff [Lv. 2250]") or game.ReplicatedStorage:FindFirstChild("Head Baker [Lv. 2275]") then
                            MagnetCandies = false
                            _G.FastAttack = false
                            for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                    topos(v.HumanoidRootPart.CFrame)
                                end 
                            end
                        else
                            topos(CFrame.new(-1617.8350830078125, 195.68605041503906, -12313.9306640625))
                        end
                    end
                elseif game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
                    if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            topos(game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.CFrame)
                        else
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then 
                                    repeat task.wait()
                                        if (CFrame.new(-2089.41504, 4583.10889, -14800.7881, 0.317375928, 0, -0.948299825, -0, 1, -0, 0.948299825, 0, 0.317375928).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                            break
                                        end
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        Buso()
                                        topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        _G.FastAttack = true
                                        MagnetCandies = false
                                    until _G.Setting.CakePiece == false  or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Main1:AddToggle("Spawn Cake Piece",2790176032,_G.Setting.AutoSpawnCakePiece,function(value)
    _G.Setting.AutoSpawnCakePiece = value
    StopAllFunction(_G.Setting.AutoSpawnCakePiece)
end)

Main1:AddToggle("Auto Cake Piece",2790176032,_G.Setting.AutoCakePiece,function(value)
    _G.Setting.AutoCakePiece = value
    StopAllFunction(_G.Setting.AutoCakePiece)
end)

Main1:AddToggle("Cake Piece Devil Fruit\n[Mastery Farm] ",2790176032,_G.Setting.CakePieceDFFarm,function(value)
    _G.Setting.CakePieceDFFarm = value
    StopAllFunction(_G.Setting.CakePieceDFFarm)
end)

Main1:AddToggle("Cake Piece Gun\n[Mastery Farm] ( Bug ) ",2790176032,_G.Setting.CakePieceGunFarm,function(value)
    _G.Setting.CakePieceGunFarm = value
    StopAllFunction(_G.Setting.CakePieceGunFarm)
end)

Main1:AddSeperator("Bone Farm")

local SetB = Main1:AddLabel("Bone : ")

spawn(function()
    while task.wait() do 
        pcall(function()
            if _G.Setting.AutoFarmBone then
                BodyClip()
                _G.Noclip = true
                if not game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") and not game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") and not game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") and not game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                    topos(CFrame.new(-9500.37207, 142.44809, 5958.70996, 1, 7.60973577e-08, 9.10053174e-13, -7.60973577e-08, 1, 6.61122925e-08, -9.05022205e-13, -6.61122925e-08, 1))
                else
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" or v.Name == "Living Zombie [Lv. 2000]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        BodyClip()
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        Buso()
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,10))
                                        _G.FastAttack = true
                                        BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                    until not _G.Setting.AutoFarmBone or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoRandomBone then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end)
    end
end)
Main1:AddToggle("Auto Farm Bone",2790176032,_G.Setting.AutoFarmBone,function(value)
    _G.Setting.AutoFarmBone = value
    StopAllFunction(_G.Setting.AutoFarmBone)
end)

Main1:AddToggle("  Auto Random Surprise",2790176032,_G.Setting.AutoRandomBone,function(value)
    _G.Setting.AutoRandomBone = value
end)

Main1:AddSeperator("Ectoplasm Farm")

local SetE = Main1:AddLabel("Ectoplasm : ")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoFarmEctoplasm then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if string.find(v.Name, "Ship") then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                if v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        Buso()
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                        BringMonEctoplasm = true
                                        _G.FastAttack = true
                                        NameM = v.Name
                                        PosMonEctoplasm = v.HumanoidRootPart.CFrame
                                        BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                                    until not v.Parent or not _G.Setting.AutoFarmEctoplasm or v.Humanoid.Health <= 0 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart")
                                end
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoBuy then
                if _G.Setting.SelectItems == "Bizarre Rifle" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",1)
                end
                if _G.Setting.SelectItems == "Ghoul Mask" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",2)
                end
                if _G.Setting.SelectItems == "Midnight Blade" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",3)
                end
            end
        end)
    end
end)
Main1:AddToggle("  Auto Farm Ectoplasm",2790176032,_G.Setting.AutoFarmEctoplasm,function(value)
    _G.Setting.AutoFarmEctoplasm = value
    StopAllFunction(_G.Setting.AutoFarmEctoplasm)
end)

Main1:AddDropdown("Select Items",{"Bizarre Rifle","Ghoul Mask","Modnight Blade"},function(value)
    _G.Setting.SelectItems = value
end)

Main1:AddToggle("Auto Buy Item",2790176032,_G.Setting.AutoBuy,function(value)
    _G.Setting.AutoBuy = value
end)

function CheckCakePiece()
    local Text = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true):split(">")
    local RealText = ""
    local List = #Text
    Is = true
    table.remove(Text,1)
    table.remove(Text,#Text)
    for i=1,#Text do local v = Text[i]
        RealText = RealText..v
        if #Text ~= 1 then  
            RealText = RealText.." "
        end
    end
    if Is then
        RealText = RealText:sub(0,#RealText-8)
    end
    if RealText == "" then
        RealText = "Opening"
    end
    return RealText
end

function CheckBone()
    return (function()
        table.foreach(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"),function(i,v)
            if v.Name == "Bones" then    
                Bones = v.Count
            end
        end)
        return (Bones) or "0"
    end)()
end

function CheckEctoplasm()
    return (function()
        table.foreach(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory"),function(i,v)
            if v.Name == "Ectoplasm" then    
                Ectoplasm = v.Count
            end
        end)
        return (Ectoplasm) or "0"
    end)()
end

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") then
                SetELS:Set("Elite Spawn : ✅")
            else
                SetELS:Set("Elite Spawn : ❌")
            end
            SetE:Set("Ectoplasm : "..tostring(CheckEctoplasm()))
            SetPR:Set("Portal : "..tostring(CheckCakePiece()))
            SetB:Set("Bone : "..tostring(CheckBone()))
            SetEL:Set("EliteHunter : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")))
        end)
    end
end)

Main1:AddSeperator("Others")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.MobAura then
                BodyClip()
                _G.Noclip = true
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") then
                        if v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(_G.Setting.SelectWeapon)
                                Buso()
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                MagnetFarm = true
                                _G.FastAttack = true
                                BringMobs(v.HumanoidRootPart.CFrame,v.Name)
                            until v.Humanoid.Health <= 0 or not _G.Setting.MobAura
                        end
                    end
                end
            end
        end)
    end
end)
Main1:AddToggle("Mob Aura",2790176032,_G.Setting.MobAura,function(value)
    _G.Setting.MobAura = value
    StopAllFunction(_G.Setting.MobAura)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoYama then
                if eltiepg() >= 30 then
                    repeat wait()
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Setting.AutoYama
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoRengoku and NewWorld then
                BodyClip()
                _G.Noclip = true
                if game.Players.LocalPlayer.Data.Level.Value >= 1350 and game.Players.LocalPlayer.Data.Level.Value < 1500 then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.81885, 296.689758, -6966.76514))
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]" then
                                        repeat task.wait() 
                                            pcall(function()
                                                Buso()
                                                EquipWeapon(_G.Setting.SelectWeapon)
                                                v.Humanoid.WalkSpeed = 0
                                                v.Humanoid.PlatformStand = true
                                                v.HumanoidRootPart.CanCollide = false
                                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                _G.FastAttack = true
                                                BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                            end)
                                        until v.Humanoid.Health <= 0 or _G.Setting.AutoRengoku == false
                                        MagnetRen = false
                                    end
                                end
                            end
                        else
                            MagnetRen = true
                            local MobRengoku1 = game:GetService("ReplicatedStorage"):FindFirstChild("Snow Lurker [Lv. 1375]")
                            local MobRengoku2 = game:GetService("ReplicatedStorage"):FindFirstChild("Arctic Warrior [Lv. 1350]")
                            if MobRengoku1 then
                                topos(MobRengoku1.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            elseif MobRengoku2 then
                                topos(MobRengoku2.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))
                            else
                                topos(CFrame.New(5658.29199, 36.4354515, -6486.33691, -0.852474749, -9.47146575e-08, -0.522768438, -1.00761731e-07, 1, -1.68675616e-08, 0.522768438, 3.82958802e-08, -0.852474749))
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Main1:AddToggle("Auto Get Yama",2790176032,_G.Setting.AutoYama,function(value)
    _G.Setting.AutoYama = value
end)

Main1:AddToggle("Auto Get Rengoku",2790176032,_G.Setting.AutoRengoku,function(value)
    _G.Setting.AutoRengoku = value
    StopAllFunction(_G.Setting.AutoRengoku)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoHolyTorch then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position- CFrame.new(10752.2783203125, 412.2037048339844, -9366.025390625).Position).Magnitude >= 5000 then
                        EquipWeapon("Holy Torch")
                        wait(0.5)
                        firetouchinterest(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1,game:GetService("Players").LocalPlayer.Character["Holy Torch"].Handle,0)
                        firetouchinterest(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2,game:GetService("Players").LocalPlayer.Character["Holy Torch"].Handle,0)
                        firetouchinterest(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3,game:GetService("Players").LocalPlayer.Character["Holy Torch"].Handle,0)
                        firetouchinterest(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4,game:GetService("Players").LocalPlayer.Character["Holy Torch"].Handle,0)
                        firetouchinterest(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5,game:GetService("Players").LocalPlayer.Character["Holy Torch"].Handle,0)
                    else
                        EquipWeapon("Holy Torch")
                        topos(CFrame.new(10752.2783203125, 412.2037048339844, -9366.025390625))
                    end
                else

                end
            end
        end)
    end
end)
Main1:AddToggle("Auto Holy Torch",2790176032,_G.Setting.AutoHolyTorch,function(value)
    _G.Setting.AutoHolyTorch = value
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoBartiloQuest then
                if game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Swan Pirate [Lv. 775]" then
                                    repeat task.wait()
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        Buso()
                                        topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Transparency = 1
                                        _G.FastAttack = true
                                        BringMobs(v.HumanoidRootPart.CFrame, v.Name)
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.Setting.AutoBartiloQuest
                                end
                            end
                        else 
                            topos(CFrame.new(872.306884765625, 121.60797119140625, 1243.0919189453125))
                        end
                    else
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
                    end
                elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    wait(0.75)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
                    if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        repeat task.wait()
                            Mob = game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]")
                            EquipWeapon(_G.Setting.SelectWeapon)
                            Buso()
                            topos(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,15))
                            Mob.Character.HumanoidRootPart.CanCollide = false
                            Mob.Character.HumanoidRootPart.Transparency = 1
                            _G.FastAttack = true
                            BringMobs(Mob.Character.HumanoidRootPart.CFrame, Mob.Name)
                        until Mob.Humanoid.Health <= 0 or not Mob.Parent or not _G.Setting.AutoBartiloQuest
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                        topos(CFrame.new(1958.5858154297, 448.94882202148, 879.37573242188))
                    else 
                        while wait() do 
                            pcall(function()
                                Hop()
                            end)
                        end
                    end
                elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame,0)
                    wait(.3)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame,0)
                    wait(.3)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame,0)
                    wait(.3)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate4.CFrame,0)
                    wait(.3)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame,0)
                    wait(.3)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame,0)
                end
            end
        end)
    end
end)
Main1:AddToggle("Auto Bartilo Quest",2790176032,_G.Setting.AutoBartiloQuest,function(value)
    _G.Setting.AutoBartiloQuest = value
    StopAllFunction(_G.Setting.AutoBartiloQuest)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoRainBowHaki then
                BodyClip()
                _G.Noclip = true
                if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    MonFindFirstToKill = "Stone [Lv. 1550] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFindFirstToKill then
                                repeat task.wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    Buso()
                                    _G.FastAttack = true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until _G.Setting.AutoRainBowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        while wait() do
                            pcall(function()
                                Hop()
                            end)
                        end
                    end
                elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                    MonFindFirstToKill = "Island Empress [Lv. 1675] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFindFirstToKill then
                                repeat task.wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    Buso()
                                    _G.FastAttack = true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until _G.Setting.AutoRainBowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        while wait() do
                            pcall(function()
                                Hop()
                            end)
                        end
                    end
                elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    MonFindFirstToKill = "Kilo Admiral [Lv. 1750] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFindFirstToKill then
                                repeat task.wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    Buso()
                                    _G.FastAttack = true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until _G.Setting.AutoRainBowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        while wait() do
                            pcall(function()
                                Hop()
                                if foundAnything ~= "" then
                                    Hop()
                                end
                            end)
                        end
                    end
                elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    MonFindFirstToKill = "Captain Elephant [Lv. 1875] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFindFirstToKill then
                                repeat task.wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    Buso()
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    _G.FastAttack = true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until _G.Setting.AutoRainBowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        while wait() do
                            pcall(function()
                                Hop()
                            end)
                        end
                    end
                elseif string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    MonFindFirstToKill = "Beautiful Pirate [Lv. 1950] [Boss]"
                    if game:GetService("Workspace").Enemies:FindFirstChild(MonFindFirstToKill) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == MonFindFirstToKill then
                                repeat task.wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,20))
                                    Buso()
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    _G.FastAttack = true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                until _G.Setting.AutoRainBowHaki == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(MonFindFirstToKill).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                    else
                        while wait() do
                            pcall(function()
                                Hop()
                            end)
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                end
            end
        end)
    end
end)
Main1:AddToggle("Auto RainBow Haki",2790176032,_G.Setting.AutoRainBowHaki,function(value)
    _G.Setting.AutoRainBowHaki = value
    StopAllFunction(_G.Setting.AutoRainBowHaki)
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.ChestTWEEN or _G.Setting.ChestTp then
                BodyClip()
                _G.Noclip = true
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name,"Chest") then
                        if _G.Setting.ChestTWEEN then
                            repeat wait()
                                topos(v.CFrame)
                            until not v.Part or not _G.Setting.ChestTWEEN
                        elseif _G.Setting.ChestTp then
                            repeat task.wait()
                                local args = {
                                    [1] = "SetTeam",
                                    [2] = "Pirates"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                            until not v.Parent or not _G.Setting.ChestTp
                        end
                    end
                end
            end
        end)
    end
end)
Main1:AddToggle("Auto Grab Chest\n[ Teleport ]",2790176032,_G.Setting.ChestTp,function(value)
    _G.Setting.ChestTp = value
    StopAllFunction(_G.Setting.ChestTp)
end)
function changeparent()
    pcall(function()
        for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
            if v.Name:find("Chest") and v:IsA("Part") then
                v.Parent = game.Workspace
            end
        end
    end)
end
changeparent()
spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.Settings.ChestTp or _G.Settings.ChestTWEEN then
                changeparent()
            end
        end)
    end
end)
Main1:AddToggle("Auto Grab Chest\n[ Tween ]",2790176032,_G.Setting.ChestTWEEN,function(value)
    _G.Setting.ChestTWEEN = value
    StopAllFunction(_G.Setting.ChestTWEEN)
end)

Main2:AddSeperator("Setting Auto Farm")

Weaponlist = {}

pcall(function()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Weaponlist,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(Weaponlist,v.Name)
        end
    end
end)

local SelectWeaponDrop = Main2:AddDropdown("Select Weapon",Weaponlist,function(value)
    _G.Setting.SelectWeapon = value
end)

Main2:AddButton("Refresh Weapon",7040347038,function()
    SelectWeaponDrop:Clear()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                SelectWeaponDrop:Add(v.Name)
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                SelectWeaponDrop:Add(v.Name)
            end
        end
    end)
end)
if not _G.Setting.FastAttack then _G.Setting.FastAttack = true end
if not _G.Setting.Rejoin then _G.Setting.Rejoin = true end
Main2:AddToggle("Fast Attack",2790176032,_G.Setting.FastAttack,function(value)
    _G.Setting.FastAttack = value
end)
task.spawn(function()
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
        if v.Name == "ErrorPrompt" and _G.Setting.AutoRejoin then
            pcall(function()
                repeat wait(.5) until game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame:FindFirstChild("ErrorMessage")
                if tonumber(game.CoreGui.RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text:split("\n")[2]:match("%d+")) ~= 772 then
                    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                end
            end)
        end
    end)
end)
Main2:AddToggle("Auto Rejoin",2790176032,_G.Setting.AutoRejoin,function(value)
    _G.Setting.AutoRejoin = value
end)

Main2:AddToggle("Screen Boost",2790176032,_G.Setting.AutoScreenBoost,function(value)
    if value then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
        setfpscap(10)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
        setfpscap(600)
    end
end)

Main2:AddSeperator("Setting Distance")
_G.DisX = 0
Main2:AddSlider("Distance X",1,50,_G.DisX,function(value)
    _G.DisX = value
end)
_G.DisY = 30
Main2:AddSlider("Distance Y",1,50,_G.DisY,function(value)
    _G.DisY = value
end)
_G.DisZ = 20
Main2:AddSlider("Distance Z",1,50,_G.DisZ,function(value)
    _G.DisZ = value
end)

Main2:AddSeperator("Use Skill Devil Fruit")
spawn(function()
    while wait() do
        pcall(function()
            if USEBF then
                if _G.Setting.SkillZ then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    wait(.3)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text, "Skill locked!") or string.find(v.Text, "สกิวยังล็อกอยู่") then
                                v:Destroy()
                            end
                        end
                    end
                end
                if _G.Setting.SkillX then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                    wait(.3)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text, "Skill locked!") or string.find(v.Text, "สกิวยังล็อกอยู่") then
                                v:Destroy()
                            end
                        end
                    end
                end
                if _G.Setting.SkillC then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                    wait(.3)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text, "Skill locked!") or string.find(v.Text, "สกิวยังล็อกอยู่") then
                                v:Destroy()
                            end
                        end
                    end
                end
                if _G.Setting.SkillV then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                    wait(.3)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                        if v.Name == "NotificationTemplate" then
                            if string.find(v.Text, "Skill locked!") or string.find(v.Text, "สกิวยังล็อกอยู่") then
                                v:Destroy()
                            end
                        end
                    end
                end
            end
        end)
    end
end)
if not _G.Setting.SkillZ then _G.Setting.SkillZ = true end
if not _G.Setting.SkillX then _G.Setting.SkillX = true end
if not _G.Setting.SkillC then _G.Setting.SkillC = true end
if not _G.Setting.SkillV then _G.Setting.SkillV = true end
if not _G.Setting.SkillZ_Gun then _G.Setting.SkillZ_Gun = true end
if not _G.Setting.SkillX_Gun then _G.Setting.SkillX_Gun = true end
Main2:AddToggle("Skill Z",2790176032,_G.Setting.SkillZ,function(value)
    _G.Setting.SkillZ = value
end)

Main2:AddToggle("Skill X",2790176032,_G.Setting.SkillX,function(value)
    _G.Setting.SkillX = value
end)

Main2:AddToggle("Skill C",2790176032,_G.Setting.SkillC,function(value)
    _G.Setting.SkillC = value
end)

Main2:AddToggle("Skill V",2790176032,_G.Setting.SkillV,function(value)
    _G.Setting.SkillV = value
end)

Main2:AddSeperator("Use Skill Gun")

Main2:AddToggle("Skill Z",2790176032,_G.Setting.SkillZ_Gun,function(value)
    _G.Setting.SkillZ_Gun = value
end)

Main2:AddToggle("Skill X",2790176032,_G.Setting.SkillX_Gun,function(value)
    _G.Setting.SkillX_Gun = value
end)

Quest1:AddSeperator("Dark Dagger")

Quest1:AddToggle("Auto Dark Dagger",2790176032,_G.Setting.AutoDarkDagger,function(value)
    _G.Setting.AutoDarkDagger = value
    spawn(function()
        repeat task.wait()
            AutoFarmBoss("rip_indra True Form [Lv. 5000] [Raid Boss]",{Use=true,Magnet=3000,Vector=Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)},"AutoDarkDaggerHop","AutoDarkDagger",true)
        until _G.Setting.AutoDarkDagger == false
        StopAllFunction(_G.Setting.AutoDarkDagger)
    end)
end)

Quest1:AddToggle("Auto Dark Dagger\n[ Hop ]",2790176032,_G.Setting.AutoDarkDaggerHop,function(value)
    _G.Setting.AutoDarkDaggerHop = value
end)
Quest1:AddSeperator("Dark Beard")

Quest1:AddToggle("Auto Dark Beard",2790176032,_G.Setting.AutoDarkBeard,function(value)
    _G.Setting.AutoDarkBeard = value
    spawn(function()
        repeat task.wait()
            AutoFarmBoss("Darkbeard [Lv.1000] [Raid Boss]",{Use=false},"AutoDarkBeardHop","AutoDarkBeard",false)
        until _G.Setting.AutoDarkBeard == false
        StopAllFunction(_G.Setting.AutoDarkBeard)
    end)
end)

Quest1:AddToggle("Auto Dark Beard\n[ Hop ]",2790176032,_G.Setting.AutoDarkBeardHop,function(value)
    _G.Setting.AutoDarkBeardHop = value
end)

Quest1:AddSeperator("Hallow Scythe")

Quest1:AddToggle("Auto Hallow Scythe",2790176032,_G.Setting.AutoHallowScythe,function(value)
    _G.Setting.AutoHallowScythe = value
    if value then
        repeat task.wait()
            AutoFarmBoss("Soul Reaper [Lv. 2100] [Raid Boss]",{Use = false},"AutoHallowScytheHop","AutoHallowScythe",false)
        until not value
        StopAllFunction(_G.Setting.AutoHallowScythe)
    end
end)

Quest1:AddToggle("Auto Hallow Scythe\n[ Hop ]",2790176032,_G.Setting.AutoHallowScytheHop,function(value)
    _G.Setting.AutoHallowScytheHop = value
end)

Quest1:AddSeperator("Buddy Sword")

Quest1:AddToggle("Auto Buddy Sword",2790176032,_G.Setting.AutoBuddySword,function(value)
    _G.Setting.AutoBuddySword = value
    spawn(function()
        repeat task.wait()
            AutoFarmBoss("Cake Queen [Lv. 2175] [Boss]",{Use=false},"AutoBuddySwordHop","AutoBuddySword",false)
        until _G.Setting.AutoBuddySword == false
        StopAllFunction(_G.Setting.AutoBuddySword)
    end)
end)

Quest1:AddToggle("Auto Buddy Sword\n[ Hop ]",2790176032,_G.Setting.AutoBuddySwordHop,function(value)
    _G.Setting.AutoBuddySwordHop = value
end)

Quest1:AddSeperator("Canvander")

Quest1:AddToggle("Auto Swan Glasses",2790176032,_G.Setting.SwanGlasses,function(value)
    _G.Setting.SwanGlasses = value
    if value then
        repeat task.wait()
            AutoFarmBoss("Don Swan [Lv. 1000] [Boss]",{Use = true,Vector = Vector3.new(2284.912109375, 15.537666320800781, 905.6329345703125),Magnet = 3000},"SwanGlassesHop","SwanGlasses",false)
        until not value
        StopAllFunction(_G.Setting.SwanGlasses)
    end
end)

Quest1:AddToggle("Auto Swan Glasses\n[ Hop ]",2790176032,_G.Setting.SwanGlassesHop,function(value)
    _G.Setting.SwanGlassesHop = value
end)

Quest1:AddSeperator("Saber")

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.Saber then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374, -0.866141438, -2.23321149e-05, -0.499799222, 2.23321149e-05, 1, -8.33832528e-05, 0.499799222, -8.33832528e-05, -0.866141438)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1421.19995, 44.5000229, 21.6000061, -0.866039991, -0.499974549, -5.5283308e-06, -5.5283308e-06, 2.06232071e-05, -0.99999994, 0.499974549, -0.866040051, -2.06232071e-05)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1648.49451, 19.5000286, 437.794678, -0.190788865, -0.981631041, 4.50909138e-05, 4.50909138e-05, -5.47170639e-05, -1, 0.981631041, -0.190788865, 5.47170639e-05)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1324.10144, 31.4560413, -461.404114, 0.766120374, 2.95190748e-05, 0.642697096, 2.95190748e-05, 1, -8.11179052e-05, -0.642697096, 8.11179052e-05, 0.766120374)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1180.89563, 21.0007095, 187.861374, -0.866141438, -2.23321149e-05, -0.499799222, 2.23321149e-05, 1, -8.33832528e-05, 0.499799222, -8.33832528e-05, -0.866141438)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1152.16479, -1.20998275, -700.431641, -0.995227575, -0.0972457826, -0.0081262216, -0.0181755088, 0.10290432, 0.994525373, -0.0958771482, 0.989926398, -0.104181051)
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                EquipWeapon("Torch")
                                topos( CFrame.new( 1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09,  0.761243105, -5.70652914e-10, 1,  1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587 ) )
                            else
                                topos(  CFrame.new(  -1610.00757,  11.5049858,  164.001587,  0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408 ) )
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "SickMan" ) ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "GetCup" )
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup )
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "SickMan" )
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "RichSon" ) == nil then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "RichSon" )
                                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "RichSon" ) == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        topos( CFrame.new( -2967.59521, -4.91089821, 5328.70703,  0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559 ) )
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                repeat task.wait()
                                                    Buso()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                until v.Humanoid.Health <= 0 or not _G.Setting.Saber
                                            end
                                        end
                                    end
                                elseif
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                        topos(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Saber Expert [Lv. 200] [Boss]" then
                                repeat task.wait()
                                    Buso()
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                    _G.FastAttack = true
                                until v.Humanoid.Health <= 0 or not _G.Setting.Saber
                                if v.Humanoid.Health <= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "ProQuestProgress", "PlaceRelic")
                                end
                            end
                        end
                    else
                        if _G.Setting.SaberHop then
                            repeat wait()
                                Hop()
                            until HopFin
                        end
                    end
                end
            end
        end)
    end
end)

Quest1:AddToggle("Auto Saber",2790176032,_G.Setting.AutoSaber,function(value)
    _G.Setting.Saber = value
    StopAllFunction(_G.Setting.Saber)
end)

Quest1:AddToggle("Auto Saber\n[ Hop ]",2790176032,_G.Setting.AutoSaberHop,function(value)
    _G.Setting.SaberHop = value
end)

function getTrophies(Amount)
    for i,v in pairs(game:GetService("Workspace").Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
        if v.Handle.Orientation then
            local NameTro = tonumber(tostring(v.Name:match("%d+")))
            if tonumber(Amount) == tonumber(NameTro) then
                if tonumber(v.Handle.Orientation.Y) == 90 or tonumber(v.Handle.Orientation.Y) == -90 then
                    return {"A", 180, -180}
                elseif tonumber(v.Handle.Orientation.Y) == 0 or tonumber(v.Handle.Orientation.Y) == 180 then
                    return {"B", -90, 90}
                end
            end
        end
    end
end

function GetFirePlacard(Number,Side)
    if tostring(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].Indicator.BrickColor) ~= "Pearl" then
        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].ClickDetector)
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.SoulGuitar then
                if ThirdWorld then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    BodyClip()
                    _G.Noclip = true
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Swamp == false then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Living Zombie [Lv. 2000]" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            _G.FastAttack = true 
                                            PosMonGuiTar = v.HumanoidRootPart.CFrame
                                            GuiTarMsHealth = v.Humanoid
                                            MagnetGuiTar = true
                                            GuiTarMon = v.Name
                                        until not _G.Setting.SoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                    end
                                end
                            end
                        else
                            MagnetGuiTar = false
                            topos(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Gravestones == false then
                        GetFirePlacard("7","Left")
                        GetFirePlacard("6","Left")
                        GetFirePlacard("5","Left")
                        GetFirePlacard("4","Right")
                        GetFirePlacard("3","Left")
                        GetFirePlacard("2","Right")
                        GetFirePlacard("1","Right")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Ghost == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == false then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2.Line.Position.Y == -1000 or not _G.Setting.SoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5.Line.Position.Y == -1000 or not _G.Setting.SoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6.Line.Position.Y == -1000 or not _G.Setting.SoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8.Line.Position.Y == -1000 or not _G.Setting.SoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9.Line.Position.Y == -1000 or not _G.Setting.SoulGuitar
                        if getTrophies(1)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(2)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(3)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(4)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(5)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or  game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == false then
                        topos(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))
                        repeat task.wait() until not _G.Setting.SoulGuitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10                      
                        for i = 10,10 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= "Storm blue" then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == "Storm blue" or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 8,8 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 6,6 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 3,4 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait(5)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor then
                            repeat task.wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.ClickDetector)
                            until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor == game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor or not _G.Setting.SoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Setting.SoulGuitar and MagnetGuiTar and game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color == Color3.fromRGB(117, 0, 0) then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == "Living Zombie [Lv. 2000]" then
                        if (v.HumanoidRootPart.Position - CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875).Position).Magnitude <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-10165.7880859375, 138.6524658203125, 5973.7724609375)
                            if v.Humanoid.Health ~= GuiTarMsHealth.Health then
                                _G.BreakGuiTarQuest = true
                                v.Humanoid.Health = 0
                                v:BreakJoints()
                            else
                                _G.BreakGuiTarQuest = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)


Quest1:AddSeperator("Soul Guitar")

Quest1:AddToggle("Auto Soul Guitar",2790176032,_G.Setting.AutoSoulGuitar,function(value)
    _G.Setting.SoulGuitar = value
    StopAllFunction(_G.Setting.SoulGuitar)
end)

Quest2:AddSeperator("Cursed Dual Katana")
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoTushitaQuest then
                BodyClip()
                _G.Noclip = true
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then
                    wait(.7)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    wait(.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                    notiy("กำลังเปิดเปิดประตู...",5)
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -3 then
                            repeat wait() topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875)) until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting.AutoTushitaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat wait() topos(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125)) until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting.AutoTushitaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            wait(1)
                            repeat wait() topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625)) until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Setting.AutoTushitaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 1
                            if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(.7)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"),"Check")
                                wait(.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                            end
                            task.wait(1)
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -4 then
                        if game:GetService("Workspace").Enemies:FindFirstChildOfClass("Model") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude <= 1000 then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            EquipWeapon(_G.Setting.SelectWeapon)
                                            Buso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false 
                                            topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                            _G.FastAttack = true 
                                            PosTHQuest = v.HumanoidRootPart.CFrame
                                            MagnetTHQuest = true
                                            NameTH = v.Name
                                        until not _G.Setting.AutoTushitaQuest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 2
                                        _G.FastAttack = false
                                    end
                                else
                                    topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                                end
                            end
                        else
                            topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                        end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == -5 then
                            ---
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                EquipWeapon(_G.Setting.SelectWeapon)
                                                Buso()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false 
                                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                _G.FastAttack = true
                                            until not _G.Setting.AutoTushitaQuest or not v.Parent or v.Humanoid.Health <= 0 or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                            _G.FastAttack = false
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") and game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").Humanoid.Health > 0 then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * _G.DistanceFarm)
                            else
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HeavenlyDimension.Spawn.Position).Magnitude <= 1000 then
                                    for i,v in pairs(game:GetService("Workspace").Map.HeavenlyDimension.Exit:GetChildren()) do
                                        Ex = i
                                    end
                                    if Ex == 2 then
                                        repeat task.wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame
                                        until not _G.Setting.AutoTushitaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Good"]) == 3
                                    end
                                    _G.FastAttack =  true
                                    repeat task.wait()
                                        repeat task.wait() 
                                            topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                            
                                        until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT1 = true
                                    until not _G.Setting.AutoTushitaQuest or _G.DoneT1
                                    repeat task.wait()
                                        repeat task.wait()
                                            topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT2 = true
                                    until _G.DoneT2 or _G.Setting.AutoTushitaQuest == false
                                    repeat wait()
                                        repeat task.wait() 
                                            topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375)) 
                                            for i, v in pairs(game:GetService("Workspace").Map.HeavenlyDimension:GetDescendants()) do
                                                if v:IsA("ProximityPrompt") then
                                                    fireproximityprompt(v)
                                                end
                                            end
                                        until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                        wait(2)
                                        _G.DoneT3 = true
                                    until _G.DoneT3 or _G.Setting.AutoTushitaQuest == false
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-08, 0.99301964, -8.73070718e-08, 1, -2.30819008e-08, -0.99301964, -8.3975138e-08, 0.11794927).Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false 
                                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    PosTHQuest = v.HumanoidRootPart.CFrame
                                                    MagnetTHQuest = true
                                                    NameTH = v.Name
                                                until not _G.Setting.AutoTushitaQuest or v.Humanoid.Health <= 0 or not v.Parent
                                                _G.FastAttack = false
                                            end
                                        else
                                            MagnetTHQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
PosMsList = {
    ["Pirate Millionaire [Lv. 1500]"] = CFrame.new(-426, 176, 5558),
    ["Pistol Billionaire [Lv. 1525]"] = CFrame.new(-83, 127, 6097),
    ["Dragon Crew Warrior [Lv. 1575]"] = CFrame.new(6320, 52, -1282),
    ["Dragon Crew Archer [Lv. 1600]"] = CFrame.new(6625, 378, 244),
    ["Female Islander [Lv. 1625]"] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
    ["Giant Islander [Lv. 1650]"] = CFrame.new(4902, 670, 39), 
    ["Marine Commodore [Lv. 1700]"] = CFrame.new(2401, 123, -7589),
    ["Marine Rear Admiral [Lv. 1725]"] = CFrame.new(3588, 229, -7085),
    ["Fishman Raider [Lv. 1775]"] = CFrame.new(-10941, 332, -8760),
    ["Fishman Captain [Lv. 1800]"] = CFrame.new(-11035, 332, -9087),
    ["Forest Pirate [Lv. 1825]"] = CFrame.new(-13446, 413, -7760),
    ["Mythological Pirate [Lv. 1850]"] = CFrame.new(-13510, 584, -6987),
    ["Jungle Pirate [Lv. 1900]"] = CFrame.new(-11778, 426, -10592),
    ["Musketeer Pirate [Lv. 1925]"] = CFrame.new(-13282, 496, -9565),
    ["Reborn Skeleton [Lv. 1975]"] = CFrame.new(-8764, 142, 5963),
    ["Living Zombie [Lv. 2000]"] = CFrame.new(-10227, 421, 6161),
    ["Demonic Soul [Lv. 2025]"] = CFrame.new(-9579, 6, 6194),
    ["Posessed Mummy [Lv. 2050]"] = CFrame.new(-9579, 6, 6194),
    ["Peanut Scout [Lv. 2075]"] = CFrame.new(-1993, 187, -10103),
    ["Peanut President [Lv. 2100]"] = CFrame.new(-2215, 159, -10474),
    ["Ice Cream Chef [Lv. 2125]"] = CFrame.new(-877, 118, -11032),
    ["Ice Cream Commander [Lv. 2150]"] = CFrame.new(-877, 118, -11032),
    ["Cookie Crafter [Lv. 2200]"] = CFrame.new(-2021, 38, -12028),
    ["Cake Guard [Lv. 2225]"] = CFrame.new(-2024, 38, -12026),
    ["Baking Staff [Lv. 2250]"] = CFrame.new(-1932, 38, -12848),
    ["Head Baker [Lv. 2275]"] = CFrame.new(-1932, 38, -12848),
    ["Cocoa Warrior [Lv. 2300]"] = CFrame.new(95, 73, -12309),
    ["Chocolate Bar Battler [Lv. 2325]"] = CFrame.new(647, 42, -12401),
    ["Sweet Thief [Lv. 2350]"] = CFrame.new(116, 36, -12478),
    ["Candy Rebel [Lv. 2375]"] = CFrame.new(47, 61, -12889),
    ["Ghost [Lv. 1500]"] = CFrame.new(5251, 5, 1111)
}

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoYamaQuest then
                BodyClip()
                _G.Noclip = true 
                if tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")) ~= "opened" then                  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Finished"] == false then                        
                        if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -3 then
                            repeat task.wait()
                                if not game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
                                    topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                                else
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Forest Pirate [Lv. 1825]" then
                                            PosMon = v.HumanoidRootPart.CFrame
                                            spawn(function()
                                                BringMobs(PosMon,v.Name)
                                            end)
                                            topos(game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]").HumanoidRootPart.CFrame)
                                        end
                                    end
                                end
                            until tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 1 or not _G.Setting.AutoYamaQuest
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -4 then
                            for ix,HitMon in pairs(game:GetService("Players").LocalPlayer.QuestHaze:GetChildren()) do
                                for NameMonHaze, CFramePos in pairs(PosMsList) do
                                    if string.find(NameMonHaze,HitMon.Name) and HitMon.Value > 0 then
                                        if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                    repeat task.wait()
                                                        EquipWeapon(_G.Setting.SelectWeapon)
                                                        Buso()
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Head.CanCollide = false
                                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                        _G.FastAttack = true
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        spawn(function()
                                                            BringMobs(PosMon,v.Name)
                                                        end)
                                                    until not _G.Setting.AutoYamaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                end
                                            end
                                        else
                                            repeat wait()
                                                if game:GetService("Workspace").Enemies:FindFirstChild(NameMonHaze) then
                                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HazeESP") then
                                                            repeat task.wait()
                                                                EquipWeapon(_G.Setting.SelectWeapon)
                                                                Buso()
                                                                v.HumanoidRootPart.CanCollide = false
                                                                v.Head.CanCollide = false
                                                                topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                                _G.FastAttack = true
                                                                PosMon = v.HumanoidRootPart.CFrame
                                                                spawn(function()
                                                                    BringMobs(PosMon,v.Name)
                                                                end)
                                                            until not v:FindFirstChild("HazeESP") or not _G.Setting.AutoYamaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 2
                                                        end
                                                    end
                                                else
                                                    if (CFramePos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
                                                        topos(CFramePos)
                                                    else
                                                        game.Players.LocalPlayer.Character.Humanoid.Health = die
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramePos
                                                        wait(.2)
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                                    end
                                                end
                                            until not _G.Setting.AutoYamaQuest
                                        end
                                    end
                                end
                            end
                        elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                            if game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000 then
                                    for gg,ez in pairs(game:GetService("Workspace").Map.HellDimension.Exit:GetChildren()) do
                                        if tonumber(gg) == 2 then
                                            repeat task.wait()
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Exit.CFrame
                                            until not _G.Setting.AutoYamaQuest or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        end
                                    end
                                    _G.FastAttack =  true
                                    EquipWeapon(_G.Setting.SelectWeapon)
                                    if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) ~= 3 then
                                        repeat task.wait()
                                            repeat task.wait() 
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.T1Yama = true
                                        until not _G.Setting.AutoYamaQuest or _G.T1Yama or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        repeat task.wait()
                                            repeat task.wait()
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                                            wait(2)
                                            _G.T2Yama = true
                                        until _G.T2Yama or _G.Setting.AutoYamaQuest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                        repeat wait()
                                            repeat task.wait() 
                                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.Particles.CFrame) 
                                                for i, v in pairs(game:GetService("Workspace").Map.HellDimension:GetDescendants()) do
                                                    if v:IsA("ProximityPrompt") then
                                                        fireproximityprompt(v)
                                                    end
                                                end
                                            until (game:GetService("Workspace").Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5 
                                            wait(2)
                                            _G.T3Yama = true
                                        until _G.T3Yama or _G.Setting.AutoYamaQuest == false or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                    end
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if (v:FindFirstChild("HumanoidRootPart").Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 300 then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until not _G.Setting.AutoYamaQuest or v.Humanoid.Health <= 0 or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3
                                                _G.FastAttack = false
                                            end
                                        else
                                            MagnetYamaQuest = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoYamaQuest then
                if tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == -5 then
                    if not game:GetService("Workspace").Map:FindFirstChild("HellDimension") or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude > 1000 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name , "Soul Reaper") then
                                    repeat task.wait()
                                        topos(v.HumanoidRootPart.CFrame)
                                    until v.Humanoid.Health <= 0 or not _G.Setting.AutoYamaQuest or not v.Parent or tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress")["Evil"]) == 3 or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace").Map.HellDimension.Spawn.Position).Magnitude <= 1000)
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) task.wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                            EquipWeapon("Hallow Essence")
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").Humanoid.Health > 0 then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame)
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check") < 50 and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") and not game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                                repeat task.wait()
                                                    EquipWeapon(_G.Setting.SelectWeapon)
                                                    Buso()
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Head.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                                    _G.FastAttack = true
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    spawn(function()
                                                        BringMobs(PosMon,v.Name)
                                                    end)
                                                until not _G.Setting.AutoYamaQuest or v.Humanoid.Health <= 0 or not v.Parent
                                                _G.FastAttack = false
                                            end
                                        end
                                    end
                                else
                                    MagnetWaitY = false
                                    topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoGetCuresed then
                BodyClip()
                _G.Noclip = true
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Boss")
                if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                        EquipWeapon("Yama")
                                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                        EquipWeapon("Tushita")
                                    else
                                        notiy("Yama or Tushita Only!!!",5)
                                        wait(5)
                                    end
                                    Buso()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                    _G.FastAttack = true 
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.Setting.AutoGetCuresed or not v.Parent or v.Humanoid.Health <= 0
                                _G.FastAttack = false
                            end
                        end
                    end
                else
                    topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    task.wait(.5)
                    topos(game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.CFrame)
                end
            end
        end)
    end
end)
Quest2:AddToggle("Auto Yama Quest",2790176032,_G.Setting.AutoYamaQuest,function(value)
    _G.Setting.AutoYamaQuest = value
    StopAllFunction(_G.Setting.AutoYamaQuest)
end)

Quest2:AddToggle("Auto Tushita Quest",2790176032,_G.Setting.AutoTushitaQuest,function(value)
    _G.Setting.AutoTushitaQuest = value
    StopAllFunction(_G.Setting.AutoTushitaQuest)
end)

Quest2:AddToggle("     Get Cursed Dual Katana",2790176032,_G.Setting.GetCDK,function(value)
    _G.Setting.AutoGetCuresed = value
    StopAllFunction(_G.Setting.AutoGetCuresed)
end)

Quest2:AddSeperator("Advanced Dungeons")
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.AutoFinishDoughDun then
                BodyClip()
                _G.Noclip = true
                if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key")then
                    EquipWeapon("Red Key")
                    repeat task.wait() until (CFrame.new(-2682.236572265625, 64.36634826660156, -12851.0625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or not _G.Setting.AutoFinishDough
                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        Buso()
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                        _G.FastAttack = true 
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Setting.AutoFinishDoughDun or not v.Parent or v.Humanoid.Health <= 0
                                    _G.FastAttack = false
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * _G.DistanceFarm)
                        end
                    end
                elseif game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") then
                    if tonumber(getgenv().CheckItemer("Conjured Cocoa")) >= 10 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cocoa Warrior [Lv. 2300]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        Buso()
                                        EquipWeapon(_G.Setting.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * _G.DistanceFarm)
                                        _G.FastAttack = true 
                                        PosFinD = v.HumanoidRootPart.CFrame
                                        FinDNameMs = v.Name
                                        MagnetFinD = true
                                        spawn(function()
                                            BringMobs(PosFinD,v.Name)
                                        end)
                                    until not _G.Setting.AutoFinishDoughDun or not v.Parent or v.Humanoid.Health <= 0 or tonumber(getgenv().CheckItemer("Conjured Cocoa")) >= 10
                                    MagnetFinD = false
                                    _G.FastAttack = false
                                end
                            end
                        end
                    else
                        MagnetFinD = false
                        CFrame.new(95.61277770996094, 73.66975402832031, -12309.16796875)
                    end
                else
                    _G.Setting.StopGodChalice = true
                    _G.Setting.EliteHunter = true
                    _G.Setting.EliteHunterHop = true
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoFinishPhoenixDun then
                if string.find(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,"Phoenix") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2813.459716796875, 254.8035125732422, -12591.5029296875)
                end
            end
        end)
    end
end)
Quest2:AddToggle("Auto Finish Dough \n Dungeons",2790176032,_G.Setting.AutoFinishDoughDun,function(value)
    _G.Setting.AutoFinishDoughDun = value
    StopAllFunction(_G.Setting.AutoFinishDoughDun)
end)

Quest2:AddToggle("Auto Finish Phoenix \n Dungeons",2790176032,_G.Setting.AutoFinishPhoenixDun,function(value)
    _G.Setting.AutoFinishPhoenixDun = value
    StopAllFunction(_G.Setting.AutoFinishPhoenixDun)
end)

Quest2:AddSeperator("Mystic Island")
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                if _G.Setting.GrabChestMysticIsland then
                    for i,v in pairs(game:GetService("Workspace").Map.MysticIsland.Chests:GetChildren()) do
                        if string.find(v.Name,"Chest") then
                            repeat wait()
                                topos(v.CFrame)
                            until not _G.Setting.GrabChestMysticIsland or not v.Part
                        end
                    end
                end
            end
        end)
    end
end)

Quest2:AddToggle("Grab Chest Mystic \n Island",2790176032,_G.Setting.GrabChestMysticIsland,function(value)
    _G.Setting.GrabChestMysticIsland = value
end)
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                if _G.Setting.AutoMysticIsland then
                    BodyClip()
                    _G.Noclip = true
                    topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").npcspawn.npcSpawn.CFrame)
                end
            else
                if _G.Setting.AutoMysticIslandHop then
                    Hop()
                end
            end
        end)
    end
end)

Quest2:AddToggle("Auto Find Mystic \n Island",2790176032,_G.Setting.AutoMysticIsland,function(value)
    _G.Setting.AutoMysticIsland = value
    StopAllFunction(_G.Setting.AutoMysticIsland)
end)

Quest2:AddToggle("Auto Find Mystic \n Island [ Hop ]",2790176032,_G.Setting.AutoMysticIslandHop,function(value)
    _G.Setting.AutoMysticIslandHop = value
end)
PlayersList = {}
for i,v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        table.insert(PlayersList,v.Name)
    end
end
Combat1:AddSeperator("Players")
local RefeshOPla = Combat1:AddDropdown("Select Player",PlayersList,function(value)
    _G.Setting.SelectPlayer = value
end)
Combat1:AddButton("Refresh Players",7040347038,function()
    RefeshOPla:Clear()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v ~= game.Players.LocalPlayer then
                RefeshOPla:Add(v.Name)
            end
        end
    end)
end)
Combat1:AddToggle("Spectate",2790176032,false,function(value)
    game.Workspace.Camera.CameraSubject = game.Players[tostring(_G.Setting.SelectPlayer)].Character.Humanoid
    if not value then
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)
Combat1:AddSlider("Distance",1,50,15,function(value)
    _G.Setting.DistancePlayers = value
end)

local SelectWeaponDropplayers = Combat1:AddDropdown("Select Weapon",Weaponlist,function(value)
    _G.Setting.SelectWeapon = value
end)

Combat1:AddButton("Refresh Weapon",7040347038,function()
    SelectWeaponDropplayers:Clear()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                SelectWeaponDropplayers:Add(v.Name)
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                SelectWeaponDropplayers:Add(v.Name)
            end
        end
    end)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.FarmPlayerTarget then
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.Name == _G.Setting.SelectPlayer then
                        if _G.Setting.FarmPlayerTarget then
                            repeat task.wait()
                                BodyClip()
                                _G.Noclip = true
                                Buso()
                                EquipWeapon(_G.Setting.SelectWeapon)
                                _G.FastAttack = true
                                topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3))
                            until v.Character.Humanoid.Health <= 0 or not _G.Setting.FarmPlayerTarget 
                        elseif _G.Setting.TeleportPly then
                            BodyClip()
                            _G.Noclip = true
                            topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                        end
                    end
                end
            end
        end)
    end
end)
Combat1:AddToggle("Auto Farm Player",2790176032,_G.Setting.FarmPlayerTarget,function(value)
    _G.Setting.FarmPlayerTarget = value
    StopAllFunction(_G.Setting.FarmPlayerTarget)
end)
Combat1:AddToggle("Teleport",2790176032,_G.Setting.TeleportPly,function(value)
    _G.Setting.TeleportPly = value
    
    StopAllFunction(_G.Setting.TeleportPly)
end)
Combat1:AddSeperator("Safe Modes")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.SafeModes then
                CharacterPlayer = game.Players.LocalPlayer.Character
                HealthMinPlayer = CharacterPlayer.Humanoid.MaxHealth * _G.Setting.SafeModeAt/100
                if CharacterPlayer.Humanoid.Health <= HealthMinPlayer then
                    repeat task.wait()
                        BodyClip()
                        _G.Noclip = true
                        CharacterPlayer.HumanoidRootPart.CFrame  = CharacterPlayer.HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                    until not _G.Setting.SafeModes
                end
            end
        end)
    end
end)
Combat1:AddToggle("Safe Modes",2790176032,_G.Setting.SafeModes,function(value)
    _G.Setting.SafeModes = value
end)
Combat1:AddSlider("Safe Mode At",1,100,25,function(value)
    _G.Setting.SafeModeAt = value
end)
Combat2:AddSeperator("Stats")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoStats then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",_G.Setting.SelectStats,_G.Setting.Points)
            end
        end)
    end
end)
Combat2:AddDropdown("Select Stats",{"Melee","Defense","Sword","Gun","Demon Fruit"},function(value)
    _G.Setting.SelectStats = value
end)
Combat2:AddSlider("Point",1,60,3,function(value)
    _G.Setting.Points = value
end)
Combat2:AddToggle("Auto Add Stats",2790176032,_G.Setting.AutoStats,function(value)
    _G.Setting.AutoStats = value
end)
Combat2:AddSeperator("Aimbot")
function CheckFriend(NameCheck)
    if not game.Players:FindFirstChild(NameCheck) then
        return false
    end
    if game.Players[NameCheck]:IsFriendsWith(game.Players.LocalPlayer.UserId) then
        return true
    end
    return false
end
function CheckAlly(NameCheck)
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:GetChildren()) do
        if v.Name == NameCheck then
            return true
        end
    end
    return false
end
function CheckTeam(NameCheck)
    return game.Players.LocalPlayer.Team == game.Players[NameCheck].Team
end
spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= 1500 and ((_G.Setting.IgnoreFriends and not CheckFriend(v.Name)) or not _G.Setting.IgnoreFriends) and ((_G.Setting.IgnoreAllies and not CheckAlly(v.Name)) or not _G.Setting.IgnoreAllies) and ((_G.Setting.IgnoreTeams and not CheckTeam(v.Name)) or not _G.Setting.IgnoreTeams) then
                    _G.TargetPlayerAim = v.Name
                end
            end
        end)
    end
end)
Combat2:AddToggle("Skill Aimbot Enabled",2790176032,_G.Setting.AimbotSkill,function(value)
    _G.Setting.AimbotSkill = value
end)
Combat2:AddToggle("Gun Aimbot Enabled",2790176032,_G.Setting.AimbotGun,function(value)
    _G.Setting.AimbotGun = value
end)
Combat2:AddSeperator("Aimbot Setting")
Combat2:AddDropdown("Select Method Aimbot",{"Auto Select ( Near )","Manual"},function(value)
    _G.Setting.SelectMethodAimbot = value
end)
Combat2:AddToggle("Ignore Allies",2790176032,_G.Setting.IgnoreAllies,function(value)
    _G.Setting.IgnoreAllies = value
end)
Combat2:AddToggle("Ignore Friends",2790176032,_G.Setting.IgnoreFriends,function(value)
    _G.Setting.IgnoreFriends = value
end)
Combat2:AddToggle("Ignore Teams",2790176032,_G.Setting.IgnoreTeams,function(value)
    _G.Setting.IgnoreTeams = value
end)
Combat2:AddSeperator("Aimbot Miscellaneous")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.EnabledPvP then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
        end)
    end
end)
Combat2:AddToggle("Enabled PvP",2790176032,_G.Setting.EnabledPvP,function(value)
    _G.Setting.EnabledPvP = value
end)
Combat2:AddToggle("No Stun Damage",2790176032,_G.Setting.NoStunDamage,function(value)
    _G.Setting.NoStunDamage = value
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Setting.NoStunDamage then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        elseif not _G.Setting.NoStunDamage then
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(18)
        end
    end)
end)
Combat1:AddSeperator("ESP")
function CreateLine()
    local Line = Drawing.new("Line")
    Line.Color = Color3.fromRGB(255,255,255)
    Line.From = Vector2.new(1,1)
    Line.To = Vector2.new(0,0)
    Line.Visible = false
    Line.Thickness = 2
    return Line
end
_G.TablePlayers = {}
function CreateBox(Mob)
    pcall(function()
        local R1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(-3,3,0).p)
        local R1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(-3,-3,0).p)
        local L1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(3,3,0).p)
        local L1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(3,-3,0).p)
        
        local Line1Right = CreateLine()
        
        Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
        Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
        Line1Right.Visible = true
        
        local Line2Left = CreateLine()
        
        Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
        Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
        Line2Left.Visible = true
        
        local Line3Left = CreateLine()
        
        Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
        Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
        Line3Left.Visible = true
        
        local Line4Right = CreateLine()
        
        Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
        Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
        Line4Right.Visible = true
    
        Line1Right.Visible = false
        Line2Left.Visible = false
        Line3Left.Visible = false
        Line4Right.Visible = false
    
        _G.TablePlayers[Mob] = Mob
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if Mob ~= game.Players.LocalPlayer and Mob.Character ~= nil and Mob.Character:FindFirstChild("HumanoidRootPart") and Mob.Character:FindFirstChild("Humanoid") and Mob.Character.Humanoid.Health > 0 and _G.Setting.ESPPlayers then
                        local R1PU , OnScreen1 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(-3,3,0).p)
                        local R1PD , OnScreen2 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(-3,-3,0).p)
                        local L1PU , OnScreen3 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(3,3,0).p)
                        local L1PD , OnScreen4 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.CFrame * CFrame.new(3,-3,0).p)
                        if OnScreen1 then 
                            Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
                            Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
                            Line1Right.Visible = true
                            
                            Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
                            Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
                            Line2Left.Visible = true
                            
                            Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
                            Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
                            Line3Left.Visible = true
                            
                            Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
                            Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
                            Line4Right.Visible = true
                        else
                            Line1Right.Visible = false
                            Line2Left.Visible = false
                            Line3Left.Visible = false
                            Line4Right.Visible = false
                        end
                    else
                        Line1Right.Visible = false
                        Line2Left.Visible = false
                        Line3Left.Visible = false
                        Line4Right.Visible = false
                    end
                end)
            end)
        end)
    end)
end
function CreateText(Mob)
    pcall(function()
        local TextName = Drawing.new("Text")
        TextName.Text = Mob.Name
        TextName.Color = Color3.new(1, 1, 1)
        TextName.Outline = true
        TextName.OutlineColor = Color3.new(0, 0, 0)
        TextName.Size = 20
        
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.Head.Position)
        
        TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
        TextName.Visible = false
        
        local TextDistance = Drawing.new("Text")
        TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(Mob.Character.HumanoidRootPart.Position)))
        TextDistance.Color = Color3.new(1, 1, 1)
        TextDistance.Outline = true
        TextDistance.OutlineColor = Color3.new(0, 0, 0)
        TextDistance.Size = 20
    
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.Head.Position)
        
        TextDistance.Position = Vector2.new(TextPosition.X + 20,TextPosition.Y)
        TextDistance.Visible = false
        
        _G.TablePlayers[Mob] = Mob
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if Mob ~= game.Players.LocalPlayer and Mob.Character ~= nil and Mob.Character:FindFirstChild("HumanoidRootPart") and Mob.Character.Humanoid.Health > 0 and Mob.Character:FindFirstChild("Humanoid") and _G.Setting.ESPPlayers then
                        local TextPosition , SeenName = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.HumanoidRootPart.Position)
                        
                        local TextPositionDistance , SeenDistance = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Character.Head.Position)
                        if SeenName then
                            TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
                            TextName.Visible = true
                            TextDistance.Position = Vector2.new(TextPositionDistance.X + 20,TextPositionDistance.Y)
                            TextDistance.Visible = true
                            TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(Mob.Character.HumanoidRootPart.Position)))
                        else 
                            TextName.Visible = false
                            TextDistance.Visible = false
                        end
                    else
                        TextName.Visible = false
                        TextDistance.Visible = false
                    end
                end)
            end)
        end)
    end)
end
local Players = game:GetService("Players")
for i,v in pairs(Players:GetChildren()) do
    pcall(function()
        CreateBox(v)
        CreateText(v)
    end)
end

Players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        CreateBox(v)
        CreateText(v)
    end)
end)


function CreateLine()
    local Line = Drawing.new("Line")
    Line.Color = Color3.fromRGB(255,255,255)
    Line.From = Vector2.new(1,1)
    Line.To = Vector2.new(0,0)
    Line.Visible = false
    Line.Thickness = 2
    return Line
end
function CreateBoxChest(Mob)
    pcall(function()
        local R1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(-3,3,0).p)
        local R1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(-3,-3,0).p)
        local L1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(3,3,0).p)
        local L1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(3,-3,0).p)
        
        local Line1Right = CreateLine()
        
        Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
        Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
        Line1Right.Visible = true
        
        local Line2Left = CreateLine()
        
        Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
        Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
        Line2Left.Visible = true
        
        local Line3Left = CreateLine()
        
        Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
        Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
        Line3Left.Visible = true
        
        local Line4Right = CreateLine()
        
        Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
        Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
        Line4Right.Visible = true
        
        Line1Right.Visible = false
        Line2Left.Visible = false
        Line3Left.Visible = false
        Line4Right.Visible = false
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if Mob.Parent and _G.Setting.ESPChest then
                        local R1PU , OnScreen1 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(-3,3,0).p)
                        local R1PD , OnScreen2 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(-3,-3,0).p)
                        local L1PU , OnScreen3 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(3,3,0).p)
                        local L1PD , OnScreen4 = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.CFrame * CFrame.new(3,-3,0).p)
                        if OnScreen1 and OnScreen2 and OnScreen3 and OnScreen4 then 
                            Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
                            Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
                            Line1Right.Visible = true
                            
                            Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
                            Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
                            Line2Left.Visible = true
                            
                            Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
                            Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
                            Line3Left.Visible = true
                            
                            Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
                            Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
                            Line4Right.Visible = true
                            if Mob.Name == "Chest1" then
                                Line1Right.Color = Color3.fromRGB(128,128,128)
                                Line2Left.Color = Color3.fromRGB(128,128,128)
                                Line3Left.Color = Color3.fromRGB(128,128,128)
                                Line4Right.Color = Color3.fromRGB(128,128,128)
                            elseif Mob.Name == "Chest2" then
                                Line1Right.Color = Color3.fromRGB(184,134,11)
                                Line2Left.Color = Color3.fromRGB(184,134,11)
                                Line3Left.Color = Color3.fromRGB(184,134,11)
                                Line4Right.Color = Color3.fromRGB(184,134,11)
                            elseif Mob.Name == "Chest3" then
                                Line1Right.Color = Color3.fromRGB(185,242,255)
                                Line2Left.Color = Color3.fromRGB(185,242,255)
                                Line3Left.Color = Color3.fromRGB(185,242,255)
                                Line4Right.Color = Color3.fromRGB(185,242,255)
                            end
                        else
                            Line1Right.Visible = false
                            Line2Left.Visible = false
                            Line3Left.Visible = false
                            Line4Right.Visible = false
                        end
                    else
                        Line1Right.Visible = false
                        Line2Left.Visible = false
                        Line3Left.Visible = false
                        Line4Right.Visible = false
                    end
                end)
            end)
        end)
    end)
end
function CreateTextChest(Mob)
    pcall(function()
        local TextName = Drawing.new("Text")
        TextName.Text = Mob.Name == "Chest1" and "Chest Iron" or Mob.Name == "Chest2" and "Chest Gold" or Mob.Name == "Chest3" and "Chest Diamond"
        TextName.Color = Color3.new(1, 1, 1)
        TextName.Outline = true
        TextName.OutlineColor = Color3.new(0, 0, 0)
        TextName.Size = 20
        
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Position)
        
        TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
        TextName.Visible = false
        
        local TextDistance = Drawing.new("Text")
        TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(Mob.Position)))
        TextDistance.Color = Color3.new(1, 1, 1)
        TextDistance.Outline = true
        TextDistance.OutlineColor = Color3.new(0, 0, 0)
        TextDistance.Size = 20
    
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Position)
        
        TextDistance.Position = Vector2.new(TextPosition.X + 20,TextPosition.Y)
        TextDistance.Visible = false
        
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if Mob.Parent and _G.Setting.ESPChest then
                        local TextPosition , SeenName = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Position)
                        
                        local TextPositionDistance , SeenDistance = game.Workspace.CurrentCamera:WorldToViewportPoint(Mob.Position)
                        if SeenDistance and SeenName then
                            TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
                            TextName.Visible = true
                            
                            TextDistance.Position = Vector2.new(TextPositionDistance.X + 20,TextPositionDistance.Y)
                            TextDistance.Visible = true
                            TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(Mob.Position)))
                            
                            if Mob.Name == "Chest1" then
                                TextName.Color = Color3.fromRGB(128,128,128)
                                TextDistance.Color = Color3.fromRGB(128,128,128)
                            elseif Mob.Name == "Chest2" then
                                TextName.Color = Color3.fromRGB(184,134,11)
                                TextDistance.Color = Color3.fromRGB(184,134,11)
                            elseif Mob.Name == "Chest3" then
                                TextName.Color = Color3.fromRGB(185,242,255)
                                TextDistance.Color = Color3.fromRGB(185,242,255)
                            end
                        else 
                            TextName.Visible = false
                            TextDistance.Visible = false
                        end
                    else
                        TextName.Visible = false
                        TextDistance.Visible = false
                    end
                end)
            end)
        end)
    end)
end
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
        CreateBoxChest(v)
        CreateTextChest(v)
    end
end
for i,v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
        CreateBoxChest(v)
        CreateTextChest(v)
    end
end
game:GetService("Workspace").ChildAdded:Connect(function(v)
    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
        CreateBoxChest(v)
        CreateTextChest(v)
    end
end)
function CreateLine()
    local Line = Drawing.new("Line")
    Line.Color = Color3.fromRGB(255,255,255)
    Line.From = Vector2.new(1,1)
    Line.To = Vector2.new(0,0)
    Line.Visible = false
    Line.Thickness = 2
    return Line
end
function CreateESPFruit(v)
    local R1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(-1,1,0).p)
    local R1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(-1,-1,0).p)
    local L1PU = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(1,1,0).p)
    local L1PD = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(1,-1,0).p)
    
    local Line1Right = CreateLine()
        
    Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
    Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
    Line1Right.Visible = true
    
    local Line2Left = CreateLine()
    
    Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
    Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
    Line2Left.Visible = true
    
    local Line3Left = CreateLine()
    
    Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
    Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
    Line3Left.Visible = true
    
    local Line4Right = CreateLine()
    
    Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
    Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
    Line4Right.Visible = true
    
    Line1Right.Color = v.Fruit.Color
    Line2Left.Color = v.Fruit.Color
    Line3Left.Color = v.Fruit.Color
    Line4Right.Color = v.Fruit.Color
    
    OldParent = v.Parent
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                if v.Parent and v.Parent == OldParent and _G.Setting.ESPDevilFruits then
                    local R1PU , OnScreen1 = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(-1,1,0).p)
                    local R1PD , OnScreen2 = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(-1,-1,0).p)
                    local L1PU , OnScreen3 = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(1,1,0).p)
                    local L1PD , OnScreen4 = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.CFrame * CFrame.new(1,-1,0).p)
                    if OnScreen1 then 
                        Line1Right.From = Vector2.new(R1PU.X,R1PU.Y)
                        Line1Right.To = Vector2.new(R1PD.X,R1PD.Y)
                        Line1Right.Visible = true
                        
                        Line2Left.From = Vector2.new(L1PU.X,L1PU.Y)
                        Line2Left.To = Vector2.new(R1PU.X,R1PU.Y)
                        Line2Left.Visible = true
                        
                        Line3Left.From = Vector2.new(L1PD.X,L1PD.Y)
                        Line3Left.To = Vector2.new(L1PU.X,L1PU.Y)
                        Line3Left.Visible = true
                        
                        Line4Right.From = Vector2.new(L1PD.X,L1PD.Y)
                        Line4Right.To = Vector2.new(R1PD.X,R1PD.Y)
                        Line4Right.Visible = true
                    else
                        Line1Right.Visible = false
                        Line2Left.Visible = false
                        Line3Left.Visible = false
                        Line4Right.Visible = false
                    end
                else
                    Line1Right.Visible = false
                    Line2Left.Visible = false
                    Line3Left.Visible = false
                    Line4Right.Visible = false
                end
            end)
        end)
    end)
end
function CreateTextESPDevilFruit(v)
    pcall(function()
        local TextName = Drawing.new("Text")
        TextName.Text = v.Name
        TextName.Color = Color3.new(1, 1, 1)
        TextName.Outline = true
        TextName.OutlineColor = Color3.new(0, 0, 0)
        TextName.Size = 20
        
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.Position)
        
        TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
        TextName.Visible = false
        
        local TextDistance = Drawing.new("Text")
        TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(v.Handle.Position)))
        TextDistance.Color = Color3.new(1, 1, 1)
        TextDistance.Outline = true
        TextDistance.OutlineColor = Color3.new(0, 0, 0)
        TextDistance.Size = 20
    
        local TextPosition = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.Position)
        
        TextDistance.Position = Vector2.new(TextPosition.X + 20,TextPosition.Y)
        TextDistance.Visible = false
        
        OldParent = v.Parent
        
        spawn(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                pcall(function()
                    if v.Parent and v.Parent == OldParent and _G.Setting.ESPDevilFruits then
                        local TextPosition , SeenName = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.Position)
                        
                        local TextPositionDistance , SeenDistance = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Handle.Position)
                        if SeenName then
                            TextName.Position = Vector2.new(TextPosition.X,TextPosition.Y - 20)
                            TextName.Visible = true
                            TextDistance.Position = Vector2.new(TextPositionDistance.X + 20,TextPositionDistance.Y)
                            TextDistance.Visible = true
                            TextDistance.Text = "Distace : "..tostring(math.floor(game.Players.LocalPlayer:DistanceFromCharacter(v.Handle.Position)))
                        else 
                            TextName.Visible = false
                            TextDistance.Visible = false
                        end
                    else
                        TextName.Visible = false
                        TextDistance.Visible = false
                    end
                end)
            end)
        end)
    end)
end

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Tool") or v.Name == "Fruit" then
        CreateESPFruit(v)
        CreateTextESPDevilFruit(v)
    end
end
game:GetService("Workspace").ChildAdded:Connect(function(v)
    if v:IsA("Tool") or v.Name == "Fruit" then
        CreateESPFruit(v)
        CreateTextESPDevilFruit(v)
    end
end)

Combat1:AddToggle("ESP Chests",2790176032,_G.Setting.ESPChest,function(value)
    _G.Setting.ESPChest = value
end)
Combat1:AddToggle("ESP Devil Fruits",2790176032,_G.Setting.ESPDF,function(value)
    _G.Setting.ESPDevilFruits = value
end)
Combat1:AddToggle("ESP Players",2790176032,_G.Setting.ESPPlayers,function(value)
    _G.Setting.ESPPlayers = value
end)
Dungeons1:AddSeperator("Server")

Dungeons1:AddButton("Rejoin",7040347038,function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)
Dungeons1:AddButton("Hop Server",7040347038,function()
    while wait() do
        Hop()
    end
end)
Dungeons1:AddButton("Hop Server Less Players",7040347038,function()
    while true do
        Site = game.HttpService:JSONDecode(game:HttpGet(Url..cursor))
        cursor = Site.nextPageCursor
        spawn(function()
            for i,v in pairs(Site.data) do
                if tonumber(5) > tonumber(v.playing) then
                    spawn(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(tostring(game.PlaceId), tostring(v.id), game.Players.LocalPlayer)
                    end)
                end
            end 
        end)
        task.wait()
    end
end)
Dungeons2:AddSeperator("Dungeons")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.BuyChip then
                local args = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = _G.Setting.SelectChip
                }
                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
            end
        end)
    end 
end)
function GetAreaRaid()
    local IslandArea = {}
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if game.Players.LocalPlayer:DistanceFromCharacter(v.Position) <= 6000 and v.Name:find("Island") then
                table.insert(IslandArea,v)
            end
        end
    end
    return IslandArea
end
function RaidTableSort()
    TableUse = GetAreaRaid()
    table.sort(TableUse,function(a,b)
        return tonumber(a.Name:match("%d+")) > tonumber(b.Name:match("%d+"))
    end)
    return TableUse
end
function GetRaidTopos()
    RaidDungeonNow = RaidTableSort()
    for i,v in pairs(RaidDungeonNow) do
        if v.Name == "Island 5" then
            return v
        elseif v.Name == "Island 4" then
            return v
        elseif v.Name == "Island 3" then
            return v
        elseif v.Name == "Island 2" then
            return v
        elseif v.Name == "Island 1" then
            return v
        end
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.NextIsland then
                BodyClip()
                _G.Noclip = true
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    topos(GetRaidTopos().CFrame * CFrame.new(0,30,0))
                elseif NewWorld then
                    topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                elseif ThirdWorld then
                    topos(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                end
            end
        end)
    end 
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.StartDungeons then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if NewWorld then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif ThirdWorld then
                        fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end
        end)
    end 
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.FarmDungeons or RaidSuperhuman then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if NewWorld then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif ThirdWorld then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                        repeat wait() until game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true
                    else
                        local args = {
                            [1] = "RaidsNpc",
                            [2] = "Select",
                            [3] = _G.Setting.SelectChip
                        }
                        
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
                    end
                else    
                    _G.Noclip = true
                    BodyClip()
                    topos(GetRaidTopos().CFrame * CFrame.new(0,30,0))
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:IsA("Model") then
                            if v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(15)
                                    v.Humanoid.Health = nil 
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.Awakener then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.KillAura then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:IsA("Model") then
                        if v:FindFirstChild("Humanoid") then
                            if v.Humanoid.Health > 0 then
                                v.Humanoid:ChangeState(15)
                                v.Humanoid.Health = nil 
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Dungeons2:AddDropdown("Select Chip",{"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},function(value)
    _G.Setting.SelectChip = value
end)
Dungeons2:AddToggle("Auto Buy Chip",2790176032,_G.Setting.BuyChip,function(value)
    _G.Setting.BuyChip = value
end)
Dungeons2:AddToggle("Auto Start Dungeons",2790176032,_G.Setting.StartChip,function(value)
    _G.Setting.StartDungeons = value
end)
Dungeons2:AddToggle("Auto Farm Dungeons",2790176032,_G.Setting.FarmDungeons,function(value)
    _G.Setting.FarmDungeons = value
    StopAllFunction(_G.Setting.FarmDungeons)
end)
Dungeons2:AddToggle("Auto Awakener",2790176032,_G.Setting.Awakener,function(value)
    _G.Setting.Awakener = value
end)
Dungeons2:AddToggle("Kill Aura",2790176032,_G.Setting.KillAura,function(value)
    _G.Setting.KillAura = value
end)
Dungeons2:AddToggle("Next Island",2790176032,_G.Setting.NextIsland,function(value)
    _G.Setting.NextIsland = value
    StopAllFunction(_G.Setting.NextIsland)
end)
Dungeons2:AddToggle("Teleport To Lab",2790176032,false,function(value)
    _G.TpLab = value
    StopAllFunction(_G.TpLab)
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.TpLab then
                BodyClip()
                _G.Noclip = true
                if NewWorld then
                    topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
                elseif ThirdWorld then
                    topos(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
                end
            end
        end)
    end
end)

if OldWorld then
    IslandList = {"WindMill","Marine","Middle Town","Jungle","Pirate Village","Desert","Snow Island","MarineFord","Colosseum","Sky Island 1","Sky Island 2","Sky Island 3","Prison","Magma Village","Under Water Island","Fountain City","Shank Room","Mob Island"}
elseif NewWorld then
    IslandList = {"Cafe","Frist Spot","Dark Area","Flamingo Mansion","Flamingo Room","Green Zone","Factory","Colossuim","Zombie Island","Two Snow Mountain","Punk Hazard","Cursed Ship","Ice Castle","Forgotten Island","Ussop Island","Mini Sky Island"}
else 
    IslandList = {"Mansion","Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island","Floating Turtle","Haunted Castle","Sea of Treats 1","Sea of Treats 2","Sea of Treats 3"}
end
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.TeleportIsland then
                BodyClip()
                _G.Noclip = true
                if _G.Setting.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.Setting.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.Setting.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.Setting.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.Setting.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.Setting.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.Setting.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.Setting.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.Setting.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.Setting.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.Setting.SelectIsland == "Sky Island 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.Setting.SelectIsland == "Sky Island 3" then
                    topos(CFrame.new(-7994.10546875, 5756.033203125, -1942.4979248047))
                elseif _G.Setting.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.Setting.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.Setting.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.Setting.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.Setting.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.Setting.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.Setting.SelectIsland == "Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.Setting.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.Setting.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.Setting.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.Setting.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.Setting.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.Setting.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.Setting.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.Setting.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.Setting.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.Setting.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.Setting.SelectIsland == "Cursed Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif _G.Setting.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.Setting.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.Setting.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.Setting.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.Setting.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.Setting.SelectIsland == "Castle On The Sea" then
                    local args = {
                        [1] = "requestEntrance",
                        [2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
                    }
        
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.Setting.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.Setting.SelectIsland == "Port Town" then
                    topos(CFrame.new(-294.20208740234, 29.756063461304, 5395.4111328125))
                elseif _G.Setting.SelectIsland == "Hydra Island" then
                    local args = {
                        [1] = "requestEntrance",
                        [2] = Vector3.new(5742.9599609375, 613.9691772460938, -283.685546875)
                    }
        
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.Setting.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.Setting.SelectIsland == "Mansion" then
                    local args = {
                        [1] = "requestEntrance",
                        [2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7466.0830078125)
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.Setting.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9506.1064453125, 142.13989257813, 5526.0405273438))
                elseif _G.Setting.SelectIsland == "Sea of Treats 2" then
                    topos(CFrame.new(-954.7802734375, 7.7934098243713, -10802.102539062))
                elseif _G.Setting.SelectIsland == "Sea of Treats 1" then
                    topos(CFrame.new(-2042.5035400391, 4.701087474823, -9896.873046875))
                elseif _G.Setting.SelectIsland == "Sea of Treats 3" then
                    topos(CFrame.new(-1978.3765869140625, 37.82405471801758, -11965.763671875))
                end
            end
        end)
    end
end)

Dungeons1:AddSeperator("Teleport Sea")

Dungeons1:AddButton("Teleport To First Sea",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

Dungeons1:AddButton("Teleport To Second Sea",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

Dungeons1:AddButton("Teleport To Third Sea",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

Dungeons1:AddSeperator("Island")

Dungeons1:AddDropdown("Select Island",IslandList,function(value)
    _G.Setting.SelectIsland = value
end)
Dungeons1:AddToggle("Teleport To Island",2790176032,_G.Setting.TeleportIsland,function(value)
    _G.Setting.TeleportIsland = value
    StopAllFunction(_G.Setting.TeleportIsland)
end)
P = require(game:GetService("ReplicatedStorage").Shop)
ListFruit = {}
ListItem = {} 
for i,v in pairs(P.Items) do
    if i:find("-") then 
        table.insert(ListFruit,v)
    end
    if v.Description and v.Price ~= math.huge then  
        table.insert(ListItem,v)
    end
end
table.sort(ListItem,function(i,v)
    return i.Price < v.Price
end)
function formatNumber(number)
    local Bounty = tostring(number)
    local sub = string.sub 
    local len = string.len
    if len(Bounty) == 4 then
        Bounty1 = sub(Bounty,1,1).."K"
    elseif len(Bounty) == 5 then
        Bounty1 = sub(Bounty,1,2).."K"
    elseif len(Bounty) == 6 then
        Bounty1 = sub(Bounty,1,3).."K"
    elseif len(Bounty) == 7 then
        Bounty1 = sub(Bounty,1,1).."M"
    elseif len(Bounty) == 8 then
        Bounty1 = sub(Bounty,1,2).."M"
    elseif len(Bounty) <= 3 then
        Bounty1 = Bounty
    end
    return Bounty1
end
Dungeons1:AddSeperator("Shop Auto Update")
for i,v in pairs(ListItem) do
    Dungeons1:AddButton(v.Name,7040347038,function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem",tostring(v.Name))
    end)
end
Dungeons2:AddSeperator("Fighting Style V.1 Shop")
Dungeons2:AddButton("Black Leg",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
Dungeons2:AddButton("Electro",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
Dungeons2:AddButton("Fishman Karate",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)
Dungeons2:AddButton("Dragon Claw",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Dungeons2:AddSeperator("Fighting Style V.2 Shop")
Dungeons2:AddButton("Superhuman",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
Dungeons2:AddButton("Death Step",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
Dungeons2:AddButton("SharkmanKarate",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)
Dungeons2:AddButton("Electric Claw",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
Dungeons2:AddButton("Dragon Talon",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
Dungeons2:AddButton("God Human",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

Dungeons2:AddSeperator("Race Shop")
Dungeons2:AddButton("Random Race",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
end)

Dungeons2:AddButton("Ghoul Race",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",4)
end)

Dungeons2:AddButton("Reset Stats",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)
Dungeons2:AddSeperator("Abilities Shop")

Dungeons2:AddButton("Geppo",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)
Dungeons2:AddButton("Buso Haki",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Dungeons2:AddButton("Soru",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)
Dungeons2:AddButton("Observations Haki",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)
Dungeons2:AddButton("Unlock All Abilities",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

Misc1:AddSeperator("Codes")
Code = {
    "fudd10",
    "fudd10_V2",
    "BigNews",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "JCWK",
    "StarcodeHEO",
    "MagicBUS",
    "KittGaming",
    "Sub2OfficialNoobie",
    "TheGreatAce",
    "Sub2NoobMaster123",
    "Sub2Daigrock",
    "Axiore",
    "StrawHatMaine",
    "TantaiGaming",
    "Bluxxy",
    "SUB2GAMERROBOT_EXP1"
}

function UseCode(Code)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end
Misc1:AddButton("Redeem All Code",7040347038,function()
    for i = 1, #Code do
        v = Code[i]
        UseCode(v)
    end
end)
Misc1:AddSeperator("Teams")
Misc1:AddButton("Join Pirates Team",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end)
Misc1:AddButton("Join Marines Team",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
end)
Misc1:AddSeperator("Special")
Misc1:AddButton("Max Zoom",7040347038,function()
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
end)
Misc1:AddButton("Click Teleport Tool",7040347038,function()
    local plr = game:GetService("Players").LocalPlayer
    local mouse = plr:GetMouse()

    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"

    tool.Activated:Connect(function()
        local root = plr.Character.HumanoidRootPart
        local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
        local offset = pos-root.Position
        root.CFrame = root.CFrame+offset
    end)

    tool.Parent = plr.Backpack
end)
Misc1:AddButton("Unlock Portal",7040347038,function()
    print("Unlock Protal")
end)
Misc1:AddButton("Boots Fps",7040347038,function()
    BsF()
end)
function BsF()
    for i,v in pairs(game.Workspace.Map:GetDescendants()) do
        if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
            v:Destroy()
        end
    end 
    for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
        if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
            v:Destroy()
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
            v:Destroy()
        end
    end
    local decalsyeeted = true 
    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = "Level01"
    for i, v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
            v.Transparency = 1
        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
            v.Enabled = false
        elseif v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
            v.TextureID = 10385902758728957
        end
    end
    for i, e in pairs(l:GetChildren()) do
        if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
            e.Enabled = false
        end
    end
end
Misc1:AddButton("Unlock FPS",7040347038,function()
    setfpscap(9999)
end)
Misc1:AddButton("Reduce CPU",7040347038,function()
    print("กูเย็ดโหด")
end)
Misc1:AddButton("Sit",7040347038,function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
Misc1:AddSeperator("Moddified")

Misc1:AddToggle("Show Fighting Styles",7040347038,_G.ShowFighting,function(value)
    _G.ShowFighting = value
end)

Misc1:AddToggle("Show Awakening",7040347038,false,function(value)
    _G.ShowAwakening = value
end)
Misc1:AddToggle("Show Money",7040347038,false,function(value)
    _G.ShowMoney = value
end)
Misc1:AddToggle("Show Inventory",7040347038,false,function(value)
    _G.ShowInventory = value
end)
Misc1:AddToggle("Show Inventory Fruit",7040347038,false,function(value)
    _G.ShowInventoryFruit = value
end)
Misc1:AddTextbox("Fruit Cost",false,function(value)
    _G.FruitsCost = value
end)
Misc1:AddTextbox("Logo Url",false,function(value)
    _G.Logo = value
end)

AZLISt = {"A","B","C","D",'E','F',"G","H","I","J","K","L","N","M","O","P","Q","R","S","T","U","V","X","Y","Z"}

Misc1:AddButton("Create Kaitun \n Pictures",7040347038,function()
    LaodKaitun()
end)

function LaodKaitun()
    local function formatNumber(number)
        local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
        return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
    end
    local UserDataOld = game.CoreGui:FindFirstChild('UserData')
    if UserDataOld then
        for i,v in pairs(game.CoreGui:FindFirstChild('UserData'):GetChildren()) do
            pcall(function()
                v:Destroy()
            end)
        end
        if UserDataOld then
            UserDataOld:Destroy()
        end
    end
    if game:FindFirstChild("CoreGui"):FindFirstChild("MyPictures") then
        game:FindFirstChild("CoreGui"):FindFirstChild("MyPictures"):Destroy()
    end
    local args = {
        [1] = "BuyDragonTalon",
        [2] = true
    }
    BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuyDragonTalon then
        if BuyDragonTalon == 1 then
            HasTalon = true
        end
    end
    local args = {
        [1] = "BuySuperhuman",
        [2] = true
    }
    BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuySuperhuman then
        if BuySuperhuman == 1 then
            HasSuperhuman = true
        end
    end
    
    local args = {
        [1] = "BuySharkmanKarate",
        [2] = true
    }
    BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuySharkmanKarate then
        if BuySharkmanKarate == 1 then
            HasKarate = true
        end
    end
    local args = {
        [1] = "BuyDeathStep",
        [2] = true
    }
    BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuyDeathStep then
        if BuyDeathStep == 1 then
            HasDeathStep = true
        end
    end
    local args = {
        [1] = "BuyElectricClaw",
        [2] = true
    }
    BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuyElectricClaw then
        if BuyElectricClaw == 1 then
            HasElectricClaw = true
        end
    end
    local args = {
        [1] = "BuyGodhuman",
        [2] = true
    }
    BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    if BuyGodhuman then
        if BuyGodhuman == 1 then
            HasGodhuman = true
        end
    end
    local data = {}
    if HasElectricClaw then
        table.insert(data, {
            ['Name'] = 'ElectricClaw',
            ['AssetID'] = '6866994470'
        })
    end
    if HasTalon then
        table.insert(data, {
            ['Name'] = 'Dragon Talon',
            ['AssetID'] = '7831677967'
        })
    end
    if HasSuperhuman then
        table.insert(data, {
            ['Name'] = 'Superhuman',
            ['AssetID'] = '4831781711'
        })
    end
    if HasKarate then
        table.insert(data, {
            ['Name'] = 'Sharkman Karate',
            ['AssetID'] = '6525157144'
        })
    end
    if HasDeathStep then
        table.insert(data, {
            ['Name'] = 'Death Step',
            ['AssetID'] = '6085350468'
        })
    end
    if HasGodhuman then
        table.insert(data, {
            ['Name'] = 'Godhuman',
            ['AssetID'] = '10338473987'
        })
    end
    local UserData = Instance.new("ScreenGui")
    local MaleeFrame = Instance.new("Frame")
    local InventoryFrame = Instance.new("Frame")
    local PostionX = 0
    UserData.Name = "UserData"
    UserData.Parent = game.CoreGui
    UserData.Enabled = true
    UserData.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    InventoryFrame.Name = "InventoryFrame"
    InventoryFrame.Parent = UserData
    InventoryFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InventoryFrame.BackgroundTransparency = 1.000
    InventoryFrame.BorderSizePixel = 0
    InventoryFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
    MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MaleeFrame.BackgroundTransparency = 1.000
    MaleeFrame.BorderSizePixel = 0
    MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
    MaleeFrame.Name = "MaleeFrame"
    MaleeFrame.Parent = UserData
    MaleeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MaleeFrame.BackgroundTransparency = 1.000
    MaleeFrame.BorderSizePixel = 0
    MaleeFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
    if _G.ShowFighting then
        for i, v in pairs(data) do
            local Assets = Instance.new("ImageLabel")
            Assets.Name = v.Name
            Assets.Parent = MaleeFrame
            Assets.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Assets.BackgroundTransparency = 1
            Assets.BorderSizePixel = 0
            Assets.Size = UDim2.new(1.1, 0, 1.1, 0)
            Assets.Image = 'rbxassetid://' .. v.AssetID
            Assets.Position =  UDim2.new(PostionX, 0, 0, 0)
            PostionX =  PostionX + 1.13
        end
    end
    if _G.ShowInventory then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 1
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
        local PostionXInv = 0
        local CountAZ = 0
        local ItemCount = 0
        local PostionYInv = 1.38
        HaveCreate = {}
        repeat wait()
            for x,z in pairs(AZLISt) do
                game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InventoryContainer.Right.Content.Search.TextBox.Text = tostring(z)
                CountAZ = CountAZ + 1
                for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
                    if v:IsA('Frame') and (v.ItemLine2.Text == "Accessory" or v.ItemLine2.Text == "Gun" or v.ItemLine2.Text == "Sword") and (v.ItemName.Text ~= nil or v.ItemName.Text ~= "") then
                        if v.Background.BackgroundColor3 == Color3.fromRGB(238, 47, 50) or v.Background.BackgroundColor3 == Color3.fromRGB(213, 43, 228) then
                            if not table.find(HaveCreate, v.ItemName.Text) then
                                item = v:Clone()
                                item.Parent = InventoryFrame
                                item.Position = UDim2.new(PostionXInv, 0, PostionYInv, 0)
                                item.Size = UDim2.new(0.7, 0, 0.7, 0)
                                PostionXInv = PostionXInv + 0.75
                                ItemCount = ItemCount + 1
                                if ItemCount >= 10 then
                                    PostionYInv = PostionYInv + 0.76
                                    ItemCount = 0
                                    PostionXInv = 0
                                end
                                table.insert(HaveCreate, v.ItemName.Text)
                            end
                        end
                    end
                end
            end
        until CountAZ >= tonumber(#AZLISt) or not game:GetService("CoreGui"):FindFirstChild("UserData")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
    end
    if _G.ShowAwakening then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
        for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible= false
            end
        end
        wait(.5)
        AwakeningToggler = game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:Clone()
        AwakeningToggler.Parent = UserData
        AwakeningToggler.Position = UDim2.new(0.8, 0, 0.11, 0)
        AwakeningToggler.Size =  UDim2.new(0.379635453, 0, 0.275648952, 0)
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
        for i, v in pairs(AwakeningToggler:GetChildren()) do
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible = true
            end
        end
        for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler:GetChildren()) do
            if v:IsA('Frame') or v:IsA('TextLabel') then
                v.Visible = true
            end
        end
    end
    if _G.ShowMoney then
        local Beil = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
        Beil.Parent = UserData
        Beil.Position = UDim2.new(0, 0, 0.933238552, 0)
        Beil.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
        local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
        Fragments.Parent = UserData
        Fragments.Position = UDim2.new(0, 0, 0.883238552, 0)
        Fragments.Size = UDim2.new(0.125707105, 0, 0.0618046969, 0)
        Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        local LevelL = game:GetService("Players").LocalPlayer.PlayerGui.Main.Level:Clone()
        LevelL.Parent = UserData
        LevelL.Position = UDim2.new(0, 0, 0.833238552, 0)
        LevelL.Size = UDim2.new(0.145707105, 0, 0.0818046969, 0)
        for i,v in pairs(LevelL:GetChildren()) do
            v:Destroy()
        end            
        local NameL = Instance.new("TextLabel")
        NameL.Name = "NameL"
        NameL.Parent = UserData
        NameL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NameL.BackgroundTransparency = 1.000
        NameL.Position = UDim2.new(0, 0, 0.803238552, 0)
        NameL.Size = UDim2.new(0.145707105, 0, 0.0618046969, 0)
        NameL.Font = Enum.Font.SourceSansBold
        NameL.Text = tostring(game.Players.LocalPlayer.Name)
        NameL.TextSize = 46.000
        NameL.TextColor3 = Color3.fromRGB(255,255,255)
        NameL.TextXAlignment = Enum.TextXAlignment.Left
        NameL.TextStrokeTransparency = 0
    end
    local FruitFrame = Instance.new("Frame")
    FruitFrame.Name = "FruitFrame"
    FruitFrame.Parent = UserData
    FruitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FruitFrame.BackgroundTransparency = 1.000
    FruitFrame.BorderSizePixel = 0
    FruitFrame.Size = UDim2.new(0.0628535524, 0, 0.123609394, 0)
    local TableFruitL = {}
    if _G.ShowInventoryFruit then
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Title.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Info.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.BackgroundTransparency = 1
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
        local PostionXInvCuurect = 8.13683219
        local ItemCountCuurect = 0
        local PostionYInvCuurect = 1.883238552
        local args = {
            [1] = "getInventoryFruits"
        }        
        local remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for i, v in pairs(remote) do 
            if v['Price'] >= tonumber(_G.FruitsCost) then 
                table.insert(TableFruitL, {
                    ['Name'] = v['Name']
                })
            end
        end
        for i, v in pairs(TableFruitL) do
            v = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame:FindFirstChild(v['Name'])
            item = v:Clone()
            item.Parent = FruitFrame
            item.Position = UDim2.new(PostionXInvCuurect, 0, PostionYInvCuurect, 0)
            item.Size = UDim2.new(0.9, 0, 0.9, 0)
            PostionXInvCuurect = PostionXInvCuurect + 0.92
            ItemCountCuurect = ItemCountCuurect + 1
            if ItemCountCuurect >= 5 then
                PostionYInvCuurect = PostionYInvCuurect + 0.9
                ItemCountCuurect = 0
                PostionXInvCuurect = 8.13683219
            end
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Title.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Container.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Info.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.BackgroundTransparency = 0
    end
    local FruitPermanentFrame = Instance.new("Frame")
    FruitPermanentFrame.Parent = UserData
    FruitPermanentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FruitPermanentFrame.BackgroundTransparency = 1.000
    FruitPermanentFrame.BorderSizePixel = 0
    FruitPermanentFrame.Size = UDim2.new(0, 100, 0, 100)
    local TableFruitP = {}
    local PostionYInvFruit = 1.97000003
    if _G.ShowInventoryFruit then 
        local args = {
            [1] = "GetFruits",
            [2] = false
        }
        remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for i, v in pairs(remote) do
            if v['HasPermanent'] then 
                table.insert(TableFruitP, {
                    ['Name'] = v['Name']
                })
            end
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild("Bomb-Bomb")
        if #TableFruitP >= 4 then 
            PostionYSalceF = 0.5
        end
        for i, v in pairs(TableFruitP) do 
            Assets = game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container:FindFirstChild(v['Name']):Clone()
            Assets.Parent = FruitPermanentFrame
            Assets.Position = UDim2.new(11.3400002, 0, PostionYInvFruit, 0)
            Assets.Size = UDim2.new(4.57000017, 0, PostionYSalceF, 0)
            PostionYInvFruit = PostionYInvFruit + 1
        end
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.BackgroundTransparency = 1 
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Left.Visible = true
    end
    game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled = false
    do local ui = game.CoreGui:FindFirstChild("SC") if ui then ui:Destroy() end end
    local SC = Instance.new("ScreenGui")
    SC.Name = "SC"
    SC.Parent = game.CoreGui
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    task.spawn(function()
        pcall(function()
            local PosXMas = 0.81
            local PosYMas = 0.86
            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
            wait(.2)
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                pcall(function()
                    if v.ToolTip == "Melee" then
                        EquipWeapon(v.Name)
                        local Malee = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Malee.Parent = SC
                        Malee.Transparency = 1
                        Malee.Name = "MeleeSC"
                        Malee.Visible = true
                        Malee.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Malee:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Blox Fruit" then
                        EquipWeapon(v.Name)
                        local BF = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        BF.Parent = SC
                        BF.Transparency = 1
                        BF.Visible = true
                        BF.Name = "BFSC"
                        BF.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(BF:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Gun" then
                        EquipWeapon(v.Name)
                        local Gun = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Gun.Parent = SC
                        Gun.Transparency = 1
                        Gun.Name = "GunSC"
                        Gun.Visible = true
                        Gun.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Gun:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Sword" then
                        EquipWeapon(v.Name)
                        local Sword = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Sword.Parent = SC
                        Sword.Transparency = 1
                        Sword.Visible = true
                        Sword.Name = "SwordSC"
                        Sword.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Sword:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait(.1)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                        wait()
                        if v.ToolTip == "Sword" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                        wait()
                        if v.ToolTip == "Blox Fruit" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                        wait()
                        if v.ToolTip == "Gun" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                        wait()
                        game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                        wait()
                    end
                end)
            end
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                pcall(function()
                    if v.ToolTip == "Melee" then
                        EquipWeapon(v.Name)
                        local Malee = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Malee.Parent = SC
                        Malee.Transparency = 1
                        Malee.Name = "MeleeSC"
                        Malee.Visible = true
                        Malee.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Malee:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Blox Fruit" then
                        EquipWeapon(v.Name)
                        local BF = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        BF.Parent = SC
                        BF.Transparency = 1
                        BF.Visible = true
                        BF.Name = "BFSC"
                        BF.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(BF:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Gun" then
                        EquipWeapon(v.Name)
                        local Gun = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Gun.Parent = SC
                        Gun.Transparency = 1
                        Gun.Name = "GunSC"
                        Gun.Visible = true
                        Gun.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Gun:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait()
                    if v.ToolTip == "Sword" then
                        EquipWeapon(v.Name)
                        local Sword = game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:Clone()
                        Sword.Parent = SC
                        Sword.Transparency = 1
                        Sword.Visible = true
                        Sword.Name = "SwordSC"
                        Sword.Position = UDim2.new(PosXMas, - 10, PosYMas, - 10)
                        for i1,v1 in pairs(Sword:GetChildren()) do
                            if v1.Name == v.Name then
                                v1:Destroy()
                            end
                        end
                        PosYMas = PosYMas - 0.135
                    end
                    wait(.1)
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                    wait()
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                    wait()
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                    wait()
                    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Gun" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                    wait()
                    game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                    wait()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("MeleeSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                        wait()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("SwordSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                        wait()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("BFSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                        wait()
                    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v.ToolTip == "Gun" then
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                            wait()
                            game.CoreGui:FindFirstChild("SC"):FindFirstChild("GunSC").Level.Text = "Mastery "..tostring(game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)).Level.Value).." (Max. 600)"
                        end
                    end
                    wait()
                    game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = false
                    wait()
                end)
            end
        end)
    end)
    
    if _G.Logo ~= nil or _G.Logo ~= "" then
        local ImageTest = Instance.new('ScreenGui')
        local BG = Instance.new('Frame')
        local Image1 = Instance.new('ImageLabel')
        local UICorner = Instance.new('UICorner')
        ImageTest.Name = 'MyPictures'
        ImageTest.Parent = game.CoreGui
        ImageTest.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BG.Name = 'BG'
        BG.Parent = ImageTest
        BG.BackgroundTransparency = 1
        BG.Size = UDim2.new(1, 0, 1, 0)
        Image1.Name = 'Image1'
        Image1.Parent = BG
        Image1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Image1.BackgroundTransparency = 1
        Image1.BorderSizePixel = 0
        Image1.Size = UDim2.new(0.08, 0, 0.15, 0)
        Image1.Position = UDim2.new(0.02,0,0.56,0)
        UICorner.CornerRadius = UDim.new(0.0199999996, 0)
        UICorner.Parent = BG
        local function getsynassetfromurl(URL)
            local getsynasset, request = getsynasset or getcustomasset or error('invalid attempt to \'getsynassetfromurl\' (custom asset retrieval function expected)'), (syn and syn.request) or (http and http.request) or (request) or error('invalid attempt to \'getsynassetfromurl\' (http request function expected)')
            local Extension, Types, URL = '', {'.png', '.webm'}, assert(tostring(type(URL)) == 'string', 'invalid argument #1 to \'getsynassetfromurl\' (string [URL] expected, got '..tostring(type(URL))..')') and URL or nil
            local Response, TempFile = request({
                Url = URL,
                Method = 'GET'
            })        
            if Response.StatusCode == 200 then
                Extension = Response.Body:sub(2, 4) == 'PNG' and '.png' or Response.Body:sub(25, 28) == 'webm' and '.webm' or nil
            end        
            if Response.StatusCode == 200 and (Extension and table.find(Types, Extension)) then
                for i = 1, 15 do
                    local Letter, Lower = string.char(math.random(65, 90)), math.random(1, 5) == 3 and true or false
                    TempFile = (not TempFile and '' .. (Lower and Letter:lower() or Letter)) or (TempFile .. (Lower and Letter:lower() or Letter)) or nil
                end
                writefile(TempFile..Extension, Response.Body)
                task.spawn(function()
                    wait(10)
                    
                    if isfile(TempFile..Extension) then
                        delfile(TempFile..Extension)
                    end
                end)
                return getsynasset(TempFile..Extension)
            elseif Response.StatusCode ~= 200 or not Extension then
                warn('unexpected \'getsynassetfromurl\' Status Error: ' .. Response.StatusMessage .. ' ('..URL..')')
            elseif not (Extension) then
                warn('unexpected \'getsynassetfromurl\' Error: (PNG or webm file expected)')
            end
        end
        local SynAssetIds = {
            Image1 = getsynassetfromurl(tostring(_G.Logo))
        }
        for K, V in next, SynAssetIds do
            pcall(function()
                if K ~= 'Image4' then
                    BG[K].Image = V
                else
                    BG[K].Video = V
                    BG[K].Playing = true
                end
            end)
        end
    end
    local IgnoreFrame = game:GetService("CoreGui").UserData:FindFirstChild("Frame")
    if IgnoreFrame then
        IgnoreFrame:Remove()
    end
end

Misc1:AddButton("Remove Kaitnu \n Pictures",7040347038,function()
    game:GetService("CoreGui").UserData:Destroy()
    game:GetService("CoreGui").MyPictures:Destroy()
    game:GetService("CoreGui").SC:Destroy()
    game.Players.LocalPlayer.PlayerGui.Main.Enabled = true
    game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled = true
end)

Misc2:AddSeperator("Devil Fruits")
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.AutoSniper then
                AdvancedStock = false
                if _G.Setting.SelectStock == "Advanced Stock" then
                    AdvancedStock = true
                end
                local args = {
                    [1] = "GetFruits"
                }
                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "PurchaseRawFruit",
                    [2] = _G.Setting.SelectFruits,
                    [3] = AdvancedStock
                }
                
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
        end)
    end
end)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Setting.GrabFruits then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        if v:IsA("Tool") then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
                            wait(.2)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                        end
                    end
                end
            end
        end
    end)
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.StoredFruits then
                NameFruit = false
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if v.Name:find("Fruit") then
                        NameFruit = v.Name
                    end
                end
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if v.Name:find("Fruit") then
                        NameFruit = v.Name
                    end
                end
                if NameFruit and not (NameFruit == "Bird: Phoenix Fruit" or NameFruit == "Human: Buddha Fruit" or NameFruit == "Bird: Falcon Fruit") then
                    TrueNameStore = NameFruit:gsub(" Fruit","")
                    local args = {
                        [1] = "StoreFruit",
                        [2] = TrueNameStore.."-"..TrueNameStore,
                        [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                    }
                    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if NameFruit == "Bird: Phoenix Fruit" then
                    local args = {
                        [1] = "StoreFruit",
                        [2] = "Bird-Bird: Phoenix",
                        [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if NameFruit == "Human: Buddha Fruit" then
                    local args = {
                        [1] = "StoreFruit",
                        [2] = "Human-Human: Buddha", 
                        [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if NameFruit == "Bird: Falcon Fruit" then
                    local args = {
                        [1] = "StoreFruit",
                        [2] = "Bird-Bird: Falcon",
                        [3] = game:GetService("Players").LocalPlayer.Character:FindFirstChild(NameFruit) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit)
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.RandomFruits then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end
        end)
    end
end)

FruitsList = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Soul-Soul","Control-Control","Dragon-Dragon","Leopard-Leopard"}
Misc2:AddDropdown("Select Devil Fruits",FruitsList,function(value)
    _G.Setting.SelectFruits = value
end)
Misc2:AddDropdown("Select Stock",{"Basic Stock","Advanced Stock"},function(value)
    _G.Setting.SelectStock = value
end)
Misc2:AddToggle("Auto Sniper Fruits",7040347038,_G.Setting.AutoSniper,function(value)
    _G.Setting.AutoSniper = value
end)
Misc2:AddToggle("Auto Grab Fruits",7040347038,_G.Setting.GrabFruits,function(value)
    _G.Setting.GrabFruits = value
end)
Misc2:AddToggle("Auto Stored Fruits",7040347038,_G.Setting.StoredFruits,function(value)
    _G.Setting.StoredFruits = value
end)
Misc2:AddToggle("Auto Random Fruits",7040347038,_G.Setting.RandomFruits,function(value)
    _G.Setting.RandomFruits = value
end)
Misc2:AddSeperator("Open Ui")
Misc2:AddButton("Open Devil Fruits Shop",7040347038,function()
    local args = {
        [1] = "GetFruits"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
end)
Misc2:AddButton("Open Inventory",7040347038,function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
    game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
end)
Misc2:AddButton("Open Inventory Fruits",7040347038,function()
    local args = {
        [1] = "getInventoryFruits"
    }
    
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
    game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)
Misc2:AddButton("Open Title Inventory",7040347038,function()
    local args = {
        [1] = "getTitles"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
Misc2:AddButton("Open Color Haki",7040347038,function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
if not oldstamina then
    oldstamina = game.Players.LocalPlayer.Character.Energy.Value
end
game.Players.LocalPlayer.Character.Energy.Changed:connect(function()
    if _G.Setting.InfEnergy then
        game.Players.LocalPlayer.Character.Energy.Value = oldstamina
    end 
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.InfAbilities then
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                    local agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
                    agility.Name = "Agility"
                    agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                end
            end
        end)
    end
end)
for i,v in pairs(getgc()) do
    if game:GetService("Players").LocalPlayer.Character.Geppo then
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
            for i2,v2 in next, getupvalues(v) do
                if tostring(i2) == "9" then
                    _G.GeppoNocooldown = function()
                        setupvalue(v,i2,0)
                    end
                end
            end
        end
    end
end
for i,v in pairs(getgc()) do
    if game:GetService("Players").LocalPlayer.Character.Soru then
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
            for i2,v2 in next, getupvalues(v) do
                if i2 == 9 then 
                    _G.SourNocooldown = function()
                        setupvalue(v,i2,{
                            LastUse = 0,
                            LastAfter = 0
                        })
                    end
                end
            end
        end
    end
end

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Setting.InfSour then
                _G.SourNocooldown()
            end
        end)
    end)
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Setting.InfGeppo then
                _G.GeppoNocooldown()
            end
        end)
    end)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Setting.ObervationRange then
                game:GetService("Players").LocalPlayer.VisionRadius.Value = math.huge
            else
                game:GetService("Players").LocalPlayer.VisionRadius.Value = 3000
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Setting.WalkOnWater then
                if game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -6 then   
                    topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                elseif game.Players.LocalPlayer.Character.LeftFoot.CFrame.Y <= -3 then
                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                        local Paertaiteen = Instance.new("Part")
                        Paertaiteen.Name = "LOL"
                        Paertaiteen.Parent = game.Workspace
                        Paertaiteen.Anchored = true
                        Paertaiteen.Transparency = 1
                        Paertaiteen.Size = Vector3.new(20,0.5,20)
                        Paertaiteen.Material = "Neon"
                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                        game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                end
            end
        end)
    end
end)
Misc2:AddSeperator("Boost")
Misc2:AddToggle("Inf Energy",7040347038,_G.Setting.InfEnergy,function(value)
    _G.Setting.InfEnergy = value
end)
Misc2:AddToggle("Inf Ability",7040347038,_G.Setting.InfAbilities,function(value)
    _G.Setting.InfAbilities = value
end)
Misc2:AddToggle("Inf Geppo",7040347038,_G.Setting.InfGeppo,function(value)
    _G.Setting.InfGeppo = value
end)
Misc2:AddToggle("Inf Sour",7040347038,_G.Setting.InfSour,function(value)
    _G.Setting.InfSour = value
end)
Misc2:AddToggle("Inf Obervation Range",7040347038,_G.Setting.ObervationRange,function(value)
    _G.Setting.ObervationRange = value
end)
Misc2:AddToggle("Walk On Water",7040347038,_G.Setting.WalkOnWater,function(value)
    _G.Setting.WalkOnWater = value
end)
Misc2:AddSeperator("Character")
Misc2:AddToggle("No Clip",7040347038,_G.Setting.NoClip,function(value)
    _G.Noclip = value
    BodyClip()
    if not value then
        StopAllFunction(_G.Noclip)
    end
end)
speedSET = 20
function activatefly()
    local mouse=game.Players.LocalPlayer:GetMouse''
    localplayer=game.Players.LocalPlayer
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.cframe = torso.CFrame
        repeat wait()
            localplayer.Character.Humanoid.PlatformStand=true
            local new=gyro.cframe - gyro.cframe.p + pos.position
            if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=1
            end
            if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
            end
            if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
            end
            if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+speedSET
            end
            if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+speedSET
            end
            if speed>speedSET then
                speed=speedSET
            end
                pos.position=new.p
            if keys.w then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
            elseif keys.s then
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
            else
                gyro.cframe = workspace.CurrentCamera.CoordinateFrame
            end
        until not _G.Setting.Fly
        if gyro then 
            gyro:Destroy() 
        end
        if pos then 
            pos:Destroy() 
        end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=0
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then 
            flying=false 
            e1:disconnect() 
            e2:disconnect() return 
        end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
    start()
end
Misc2:AddToggle("Fly",7040347038,_G.Setting.Fly,function(value)
    _G.Setting.Fly = value
    if value then
        activatefly()
    end
end)
