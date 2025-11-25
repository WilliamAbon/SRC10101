local UI_AgusNgeseng = {}

function UI_AgusNgeseng:NambahUI(tinggi)
	if game.CoreGui:FindFirstChild("SRC_Screen") then
		game.CoreGui:FindFirstChild("SRC_Screen"):Destroy()
	end

	local ScreenGui = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local FrameKiri = Instance.new("Frame")
	local LogoFrame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local PilihanFrame = Instance.new("Frame")
	local ScrollingPilihanFrame = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local UIPadding = Instance.new("UIPadding")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIPadding_3 = Instance.new("UIPadding")
	local TabFrame = Instance.new("Frame")
	local NamaTab = Instance.new("TextLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local TextLabel_5 = Instance.new("TextLabel")

	local http = game:GetService("HttpService")
	local w = game:HttpGet("https://raw.githubusercontent.com/WilliamAbon/SRC10101/refs/heads/main/SRC%20Hub%20Yang%20Versi%201.0/Nama.json")
	local TABLESRC = http:JSONDecode(w)
	
	
	
	local use = game:GetService("UserInputService")

	if use.TouchEnabled then
		local OpenClose = Instance.new("TextButton")
		local UIGradients = Instance.new("UIGradient")
		local TextLabel = Instance.new("TextLabel")
		
		OpenClose.Name = "OpenClose"
		OpenClose.Parent = game.StarterGui.ScreenGui
		OpenClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		OpenClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
		OpenClose.BorderSizePixel = 0
		OpenClose.Position = UDim2.new(0.911640942, 0, 0.303621173, 0)
		OpenClose.Size = UDim2.new(0, 63, 0, 39)
		OpenClose.Font = Enum.Font.SourceSans
		OpenClose.Text = ""
		OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
		OpenClose.TextSize = 14.000
		OpenClose.TextWrapped = true

		UIGradients.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(9, 2, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(9, 39, 16))}
		UIGradients.Parent = OpenClose

		TextLabel.Parent = OpenClose
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = "Open/Close"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 12.000
		TextLabel.TextWrapped = true
		
		OpenClose.Active = true
		OpenClose.Draggable = true

		OpenClose.MouseButton1Click:Connect(function()
			MainFrame.Visible = not MainFrame.Visible
		end)

	elseif use.KeyboardEnabled then
		--local rt = loadstring(game:HttpGet("https://raw.githubusercontent.com/WilliamAbon/SRC10101/refs/heads/main/SRC%20Script/module%20Drag%20Frame%20sukaan%20gwNih.lua"))()
		--rt:Drag(MainFrame)
		MainFrame.Active = true
		MainFrame.Draggable = true
		if getgenv().Pengaturan then
			use.InputBegan:Connect(function(input)
				if input.KeyCode == Enum.KeyCode[getgenv().Pengaturan.BukaTutup] then --getgenv().Pengaturan.BukaTutup then
					MainFrame.Visible = not MainFrame.Visible
				end
			end)
		end
	end

	ScreenGui.Name = "SRC_Screen"
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ScreenGui
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.500201404, 0, 0.503383219, 0)
	MainFrame.Size = UDim2.new(0, 570, 0, 340)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(9, 2, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 9, 9))}
	UIGradient.Parent = MainFrame

	FrameKiri.Name = "FrameKiri"
	FrameKiri.Parent = MainFrame
	FrameKiri.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameKiri.BackgroundColor3 = Color3.fromRGB(69, 75, 69)
	FrameKiri.BackgroundTransparency = 0.750
	FrameKiri.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FrameKiri.BorderSizePixel = 0
	FrameKiri.Position = UDim2.new(0.131180108, 0, 0.5, 0)
	FrameKiri.Size = UDim2.new(0.262857139, 0, 1, 0)

	LogoFrame.Name = "LogoFrame"
	LogoFrame.Parent = FrameKiri
	LogoFrame.BackgroundColor3 = Color3.fromRGB(40, 27, 27)
	LogoFrame.BackgroundTransparency = 0.500
	LogoFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoFrame.BorderSizePixel = 0
	LogoFrame.Position = UDim2.new(-7.29911392e-07, 0, -0.00294093834, 0)
	LogoFrame.Size = UDim2.new(1.00000012, 0, 0.231911749, 0)

	TextLabel.Parent = LogoFrame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0,0.375, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.309700042, 0)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = "B. Indonesia"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 17.000
	TextLabel.TextWrapped = true

	TextLabel_2.Parent = LogoFrame
	TextLabel_2.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.5, 0,0.685, 0)
	TextLabel_2.Size = UDim2.new(1, 0, 0.236065313, 0)
	TextLabel_2.Font = Enum.Font.RobotoMono
	TextLabel_2.Text = "Versi "..TABLESRC.Versi
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 17.000
	TextLabel_2.TextWrapped = true

	TextLabel_3.Parent = LogoFrame
	TextLabel_3.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(0.493, 0,0.056, 0)
	TextLabel_3.Size = UDim2.new(1, 0, 0.314471036, 0)
	TextLabel_3.Font = Enum.Font.RobotoMono
	TextLabel_3.Text = TABLESRC.Nama
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 30.000
	TextLabel_3.TextWrapped = true

	PilihanFrame.Name = "PilihanFrame"
	PilihanFrame.Parent = FrameKiri
	PilihanFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	PilihanFrame.BackgroundTransparency = 0.700
	PilihanFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PilihanFrame.BorderSizePixel = 0
	PilihanFrame.Position = UDim2.new(-0.00100000005, 0, 0.257999986, 0)
	PilihanFrame.Size = UDim2.new(1, 0, 0.746999979, 0)

	ScrollingPilihanFrame.Name = "ScrollingPilihanFrame"
	ScrollingPilihanFrame.Parent = PilihanFrame
	ScrollingPilihanFrame.Active = true
	ScrollingPilihanFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScrollingPilihanFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingPilihanFrame.BackgroundTransparency = 1.000
	ScrollingPilihanFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingPilihanFrame.BorderSizePixel = 0
	ScrollingPilihanFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	ScrollingPilihanFrame.Size = UDim2.new(1, 0, 1, 0)
	ScrollingPilihanFrame.CanvasSize = UDim2.fromScale(0, tinggi)
	ScrollingPilihanFrame.BottomImage = "rbxassetid://17582895164"
	ScrollingPilihanFrame.MidImage = "rbxassetid://15307205005"
	ScrollingPilihanFrame.ScrollBarThickness = 5
	ScrollingPilihanFrame.TopImage = "rbxassetid://17582902069"

	UIGridLayout.Parent = ScrollingPilihanFrame
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(1, 0, 0, 50)

	UIPadding.Parent = ScrollingPilihanFrame
	UIPadding.PaddingRight = UDim.new(0, 9)

	UIPadding_2.Parent = PilihanFrame
	UIPadding_2.PaddingBottom = UDim.new(0.0189999994, 0)
	UIPadding_2.PaddingLeft = UDim.new(0.0199999996, 0)
	UIPadding_2.PaddingRight = UDim.new(0.0450000018, 0)
	UIPadding_2.PaddingTop = UDim.new(0.0189999994, 0)

	UIPadding_3.Parent = FrameKiri
	UIPadding_3.PaddingBottom = UDim.new(0.0189999994, 0)
	UIPadding_3.PaddingLeft = UDim.new(0.0399999991, 0)
	UIPadding_3.PaddingRight = UDim.new(0.0399999991, 0)
	UIPadding_3.PaddingTop = UDim.new(0.0189999994, 0)

	TabFrame.Name = "TabFrame"
	TabFrame.Parent = MainFrame
	TabFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	TabFrame.BackgroundTransparency = 0.500
	TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0.273135006, 0, 0.161764711, 0)
	TabFrame.Size = UDim2.new(0.716293514, 0, 0.821104169, 0)

	NamaTab.Name = "NamaTab"
	NamaTab.Parent = MainFrame
	NamaTab.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	NamaTab.BackgroundTransparency = 0.550
	NamaTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NamaTab.BorderSizePixel = 0
	NamaTab.Position = UDim2.new(0.284, 0,0.115, 0)
	NamaTab.Size = UDim2.new(0.155871272, 0, 0.0470588244, 0)
	NamaTab.Font = Enum.Font.RobotoMono
	NamaTab.Text = "nothing Tab"
	NamaTab.TextColor3 = Color3.fromRGB(255, 255, 255)
	NamaTab.TextSize = 13.000
	NamaTab.TextWrapped = true
	NamaTab.TextYAlignment = Enum.TextYAlignment.Top

	TextLabel_4.Parent = MainFrame
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_4.BorderSizePixel = 0
	TextLabel_4.Position = UDim2.new(0.814, 0,0, 0)
	TextLabel_4.Size = UDim2.new(0.247368425, 0, 0.114705883, 0)
	TextLabel_4.Font = Enum.Font.RobotoMono
	TextLabel_4.Text = "Hari:Error\nJam:Error"
	TextLabel_4.Name = "HariJamLabel"
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14.000
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top

	TextLabel_5.Parent = MainFrame
	TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.BackgroundTransparency = 1.000
	TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_5.BorderSizePixel = 0
	TextLabel_5.Position = UDim2.new(0.585480392, 0, 0, 0)
	TextLabel_5.Size = UDim2.new(0.268421054, 0, 0.114705883, 0)
	TextLabel_5.Font = Enum.Font.RobotoMono
	TextLabel_5.Text = "FPS:Error\nPing:10000ms"
	TextLabel_5.Name = "FpsPingLabel"
	TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.TextScaled = true
	TextLabel_5.TextSize = 14.000
	TextLabel_5.TextWrapped = true
	TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel_5.TextYAlignment = Enum.TextYAlignment.Top

	local function to12H(hour)
		hour = hour % 24
		return (hour - 1) % 12 + 1
	end

	local function getTime()
		local date = os.date("*t")
		return ("%02d:%02d"):format(((date.hour % 24) - 1) % 12 + 1, date.min)
	end

	local currentHour = os.date("*t")["hour"]
	if currentHour < 12 or currentHour == 24 then
		print(getTime()..'AM')
	else
		print(getTime()..'PM')
	end

	local run = game:GetService("RunService")
	local days_of_week = {"Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"}
	local player = game.Players.LocalPlayer
	local start_time = os.clock()
	local frame_count = 0
	local runfu
	runfu = run.Heartbeat:Connect(function()
		local current_time_table = os.date("*t")
		local weekday_index = current_time_table.wday
		local today = days_of_week[weekday_index]

		local currentHour = os.date("*t")["hour"]
		if currentHour < 12 or currentHour == 24 then
			TextLabel_4.Text = "Hari:"..today.."\nJam:"..getTime().."AM"
		else
			TextLabel_4.Text = "Hari:"..today.."\nJam:"..getTime().."PM"
		end

		local ping_seconds = player:GetNetworkPing()
		local ping_ms = ping_seconds * 1000
		frame_count = frame_count + 1
		if os.clock() - start_time >= 1 then
			TextLabel_5.Text = "FPS:"..frame_count.."\nPing:"..math.floor(ping_ms).."ms"
			frame_count = 0
			start_time = os.clock()
		end
	end)
	ScreenGui.Destroying:Connect(function()
		runfu:Disconnect()
	end)
end

function UI_AgusNgeseng:NambahTab(Text, Image, pajang)
	local TextButton = Instance.new("TextButton")
	local ImageLabel = Instance.new("ImageLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local TextLabel = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	if game.CoreGui:FindFirstChild("SRC_Screen") then
		local w = game.CoreGui:FindFirstChild("SRC_Screen").MainFrame.FrameKiri.PilihanFrame.ScrollingPilihanFrame
		TextButton.Parent = w
		TextButton.BackgroundColor3 = Color3.fromRGB(66, 32, 32)
		TextButton.BackgroundTransparency = 0.650
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
		TextButton.Name = Text.."Button"

		ImageLabel.Parent = TextButton
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Size = UDim2.new(1, 0, 1, 0)
		ImageLabel.Image = "rbxassetid://"..Image

		UIAspectRatioConstraint.Parent = ImageLabel

		TextLabel.Parent = TextButton
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.417075217, 0, 0, 0)
		TextLabel.Size = UDim2.new(0, 62, 0, 50)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.Text = Text
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 27.000
		TextLabel.TextWrapped = true

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = TextButton
		for _,v in pairs(game.CoreGui:FindFirstChild("SRC_Screen").MainFrame.TabFrame:GetChildren()) do
			v.Visible = false
		end
		local ScrollingFrame = Instance.new("ScrollingFrame")

		ScrollingFrame.Parent = game.CoreGui:FindFirstChild("SRC_Screen").MainFrame.TabFrame
		ScrollingFrame.Active = true
		ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ScrollingFrame.BackgroundTransparency = 1.000
		ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ScrollingFrame.BorderSizePixel = 0
		ScrollingFrame.Size = UDim2.new(0.99000001, 0, 1, 0)
		ScrollingFrame.BottomImage = "rbxassetid://17582895164"
		ScrollingFrame.MidImage = "rbxassetid://15307205005"
		ScrollingFrame.ScrollBarThickness = 5
		ScrollingFrame.CanvasSize = UDim2.new(0, 0, pajang, 0)
		ScrollingFrame.TopImage = "rbxassetid://17582902069"
		ScrollingFrame.Name = Text.."ScrollingFrame"

		local s = Instance.new("UIListLayout")
		s.Wraps = true
		s.Padding = UDim.new(0,5)
		s.Parent = ScrollingFrame

		local ui = Instance.new("UIPadding")
		ui.Parent = ScrollingFrame---------|
		ui.PaddingBottom = UDim.new(0, 3)--|
		ui.PaddingRight  = UDim.new(0, 8)--|
		ui.PaddingLeft   = UDim.new(0, 3)--|
		ui.PaddingTop    = UDim.new(0, 3)--|
		game:GetService("CoreGui").SRC_Screen.MainFrame.NamaTab.Text = Text.."Tab"
		TextButton.MouseButton1Click:Connect(function()
			for _,v in pairs(game.CoreGui:FindFirstChild("SRC_Screen").MainFrame.TabFrame:GetChildren()) do
				v.Visible = false
			end
			ScrollingFrame.Visible = true
			game:GetService("CoreGui").SRC_Screen.MainFrame.NamaTab.Text = TextLabel.Text.."Tab"
		end)
	end
end

function UI_AgusNgeseng:OnOff(NameParent, default, Text, funct)
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UIPadding = Instance.new("UIPadding")
	local UICorner_3 = Instance.new("UICorner")

	TextButton.Parent = game.CoreGui.SRC_Screen.MainFrame.TabFrame[NameParent.."ScrollingFrame"]
	TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	TextButton.BackgroundTransparency = 0.5
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Size = UDim2.new(1, 0, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0302048419, 0, 0.108907469, 0)
	TextLabel.Size = UDim2.new(0, 285, 0, 38)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = TextButton
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	Frame.BackgroundTransparency = 0.350
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.870000005, 0, 0.484453708, 0)
	Frame.Size = UDim2.new(0.218973741, 0, 0.768907368, 0)

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = Frame

	Frame_2.Parent = Frame
	Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame_2.BackgroundColor3 = Color3.fromRGB(159, 113, 113)
	Frame_2.BackgroundTransparency = 0
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.200000003, 0, 0.5, 0)
	Frame_2.Size = UDim2.new(1, 0, 1, 0)

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = Frame_2

	UIAspectRatioConstraint.Parent = Frame_2

	UIPadding.Parent = Frame
	UIPadding.PaddingBottom = UDim.new(0, 3)
	UIPadding.PaddingLeft = UDim.new(0, 3)
	UIPadding.PaddingRight = UDim.new(0, 3)
	UIPadding.PaddingTop = UDim.new(0, 3)

	UICorner_3.Parent = TextButton

	local i = default
	if funct then
		task.spawn(function()
			funct(i)
		end)
	end
	TextButton.MouseButton1Click:Connect(function()
		i = not i
		local tw = game:GetService("TweenService")
		if i then
			tw:Create(Frame_2, TweenInfo.new(0.2), {Position = UDim2.fromScale(0.8,0.5)}):Play()
		else
			tw:Create(Frame_2, TweenInfo.new(0.2), {Position = UDim2.fromScale(0.2,0.5)}):Play()
		end
		if funct then
			task.spawn(function()
				funct(i)
			end)
		end
	end)
end

function UI_AgusNgeseng:Slider(Min, Max, default, Title, TaruDimana, smooht, func)
	local TextButton = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local FrameAreaSlider = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local FrameDrag = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local UICorner_3 = Instance.new("UICorner")
	local OutputNum = Instance.new("TextLabel")

	TextButton.Parent = game.CoreGui.SRC_Screen.MainFrame.TabFrame[TaruDimana.."ScrollingFrame"]
	TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	TextButton.BackgroundTransparency = 0.5
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Size = UDim2.new(1, 0, 0, 50)

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0302047655, 0, 0.108907469, 0)
	TextLabel.Size = UDim2.new(0, 219, 0, 38)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	FrameAreaSlider.Name = "FrameAreaSlider"
	FrameAreaSlider.Parent = TextButton
	FrameAreaSlider.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameAreaSlider.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	FrameAreaSlider.BackgroundTransparency = 0.350
	FrameAreaSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FrameAreaSlider.BorderSizePixel = 0
	FrameAreaSlider.Position = UDim2.new(0.806894302, 0, 0.644453764, 0)
	FrameAreaSlider.Size = UDim2.new(0.34518531, 0, 0.200000003, 0)

	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = FrameAreaSlider

	FrameDrag.Name = "FrameDrag"
	FrameDrag.Parent = FrameAreaSlider
	FrameDrag.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameDrag.BackgroundColor3 = Color3.fromRGB(159, 113, 113)
	FrameDrag.BorderColor3 = Color3.fromRGB(0, 0, 0)
	FrameDrag.BorderSizePixel = 0
	FrameDrag.Position = UDim2.new(0, 0, 0.5, 0)
	FrameDrag.Size = UDim2.new(1.75, 0, 1.75, 0)

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = FrameDrag

	UIAspectRatioConstraint.Parent = FrameDrag

	UICorner_3.Parent = TextButton

	OutputNum.Name = "OutputNum"
	OutputNum.Parent = TextButton
	OutputNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OutputNum.BackgroundTransparency = 1.000
	OutputNum.BorderColor3 = Color3.fromRGB(0, 0, 0)
	OutputNum.BorderSizePixel = 0
	OutputNum.Position = UDim2.new(0.797911167, 0, 0.0979999974, 0)
	OutputNum.Size = UDim2.new(0.181229055, 0, 0.400000006, 0)
	OutputNum.Font = Enum.Font.SourceSans
	OutputNum.Text = tostring(default)
	OutputNum.TextColor3 = Color3.fromRGB(255, 255, 255)
	OutputNum.TextSize = 26.000
	OutputNum.TextWrapped = true
	OutputNum.TextXAlignment = Enum.TextXAlignment.Right
	OutputNum.TextYAlignment = Enum.TextYAlignment.Bottom

	local UIS = game:GetService("UserInputService")
	local dragging = false
	if func then
		task.spawn(function()
			func(default)
		end)
	end
	local function UpdateSlider(inputX)
		local absPos = FrameAreaSlider.AbsolutePosition.X
		local absSize = FrameAreaSlider.AbsoluteSize.X

		local percent = math.clamp((inputX - absPos) / absSize, 0, 1)
		local value = Min + (Max - Min) * percent

		-- bulatan geser
		FrameDrag.Position = UDim2.new(percent, 0, 0.5, 0)



		local function FormatNumber(valuew)
			-- format 2 angka di belakang koma
			local formatted = string.format("%.2f", valuew)

			-- kalau .00 → hapus (jadi angka bulat)
			if formatted:sub(-3) == ".00" then
				formatted = formatted:sub(1, #formatted - 3)
			else
				-- kalau misalnya 1.50 → 1.5
				formatted = formatted:gsub("0$", "")
			end

			return formatted
		end

		if smooht == true then
			OutputNum.Text = math.floor(value)
		else
			OutputNum.Text = FormatNumber(value)
		end

		if func and smooht == true then
			task.spawn(function()
				func(math.floor(value))
			end)
		elseif func and smooht == false then
			task.spawn(function()
				func(tonumber(FormatNumber(value)))
			end)
		end
	end

	FrameAreaSlider.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			UpdateSlider(input.Position.X)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			UpdateSlider(input.Position.X)
		end
	end)

	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	-- Set default posisi
	local defaultPercent = (default - Min) / (Max - Min)
	FrameDrag.Position = UDim2.new(defaultPercent, 0, 0.5, 0)
	OutputNum.Text = tostring(default)
end

function UI_AgusNgeseng:Selection(TaruDimana, Title, func, default, Panjang)--game.CoreGui.SRC_Screen.MainFrame.TabFrame[TaruDimana.."ScrollingFrame"]
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local UIGradient = Instance.new("UIGradient")
	local Frame = Instance.new("Frame")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIPadding = Instance.new("UIPadding")
	local UIGridLayout = Instance.new("UIGridLayout")

	local UIPadding_2 = Instance.new("UIPadding")
	local UICorner_4 = Instance.new("UICorner")

	local e = false

	TextButton.Parent = game.CoreGui.SRC_Screen.MainFrame.TabFrame[TaruDimana.."ScrollingFrame"]
	TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	TextButton.BackgroundTransparency = 0.550
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.00755121047, 0, 0.475884706, 0)
	TextButton.Size = UDim2.new(1, 0, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 11, 0, 5)
	TextLabel.Size = UDim2.new(0, 316, 0, 38)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = Title..": "..default
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UICorner.Parent = TextButton

	ImageLabel.Parent = TextButton
	ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0, 366, 0, 24)
	ImageLabel.Rotation = 180.000
	ImageLabel.Size = UDim2.new(0, 33, 0, 28)
	ImageLabel.Image = "rbxassetid://1248849582"

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(159, 113, 113)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 113, 113))}
	UIGradient.Parent = ImageLabel

	Frame.Parent = TextButton
	Frame.AnchorPoint = Vector2.new(0.5, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.333000004, 0)
	Frame.Size = UDim2.new(0.977999985, 0, 0.629999995, 0)

	ScrollingFrame.Parent = Frame
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
	ScrollingFrame.Visible = false
	ScrollingFrame.BottomImage = "rbxassetid://17582895164"
	ScrollingFrame.MidImage = "rbxassetid://15307205005"
	ScrollingFrame.ScrollBarThickness = 3
	ScrollingFrame.CanvasSize = UDim2.fromScale(0,Panjang)
	ScrollingFrame.TopImage = "rbxassetid://17582902069"

	UIPadding.Parent = ScrollingFrame
	UIPadding.PaddingRight = UDim.new(0, 7)

	UIGridLayout.Parent = ScrollingFrame
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 2)
	UIGridLayout.CellSize = UDim2.new(1, 0, 0, 23)

	UIPadding_2.Parent = Frame
	UIPadding_2.PaddingBottom = UDim.new(0, 4)
	UIPadding_2.PaddingLeft = UDim.new(0, 4)
	UIPadding_2.PaddingRight = UDim.new(0, 4)
	UIPadding_2.PaddingTop = UDim.new(0, 4)

	UICorner_4.Parent = Frame
	local tw = game:GetService("TweenService")
	local coldown = false
	function tutup()
		if coldown == false then
			coldown = true
			e = false
			ScrollingFrame.Visible = false
			tw:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
			wait(0.3)
			tw:Create(TextButton, TweenInfo.new(0.3), {Size = UDim2.new(1,0,0,50)}):Play()
			tw:Create(ImageLabel, TweenInfo.new(0.3), {Rotation = 180}):Play()
			task.wait(0.32)
			coldown = false
		end
	end

	TextButton.MouseButton1Click:Connect(function()
		if coldown == false then
			coldown = true
			if e == true then
				e = false
				ScrollingFrame.Visible = false
				tw:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
				wait(0.3)
				tw:Create(TextButton, TweenInfo.new(0.3), {Size = UDim2.new(1,0,0,50)}):Play()
				tw:Create(ImageLabel, TweenInfo.new(0.3), {Rotation = 180}):Play()
			else
				e = true 
				tw:Create(TextButton, TweenInfo.new(0.3), {Size = UDim2.new(1,0,0,140)}):Play()--ImageLabel
				tw:Create(ImageLabel, TweenInfo.new(0.3), {Rotation = 0}):Play()
				wait(0.3)
				tw:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 0.75}):Play()
				wait(0.3)
				ScrollingFrame.Visible = true
			end
			task.wait(0.32)
			coldown = false
		end
	end)

	local obj = {}

	if func then
		local w = tostring(default)
		task.spawn(function()
			func(w)
		end)
	end

	function obj:NambahLagi(TitleDUA)
		local TextButton_3 = Instance.new("TextButton")
		TextButton_3.Parent = ScrollingFrame
		TextButton_3.Name = TitleDUA
		TextButton_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		TextButton_3.BackgroundTransparency = 0.500
		TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton_3.BorderSizePixel = 0
		TextButton_3.Size = UDim2.new(1, 0, 0, 28)
		TextButton_3.Font = Enum.Font.Roboto
		TextButton_3.Text = TitleDUA
		TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_3.TextSize = 23.000
		local UICorner_3 = Instance.new("UICorner")
		UICorner_3.Parent = TextButton_3

		TextButton_3.MouseButton1Click:Connect(function()
			local w = tostring(TextButton_3.Text)
			if func then
				task.spawn(function()
					func(w)
				end)
			end
			tutup()
			TextLabel.Text = Title..": "..w
		end)
	end
	
	function obj:HapusSemua()
		for _,v in pairs(ScrollingFrame:GetChildren()) do
			if v:IsA("TextButton") then
				v:Destroy()
			end
		end
	end
	
	function obj:Hapus(s)
		for _,v in pairs(ScrollingFrame:GetChildren()) do
			if v:IsA("TextButton") and v.Name == s then
				v:Destroy()
			end
		end
	end

	return obj
end

function UI_AgusNgeseng:Label(TItle, taru)
	local TextLabel = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")

	TextLabel.Parent = game.CoreGui.SRC_Screen.MainFrame.TabFrame[taru.."ScrollingFrame"]
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 0.850
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(1, 0, 0, 20)
	TextLabel.Font = Enum.Font.Ubuntu
	TextLabel.Text = TItle
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 18.000
	TextLabel.TextWrapped = true

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = TextLabel
end

function UI_AgusNgeseng:Button(Title, TitleTwo, Taru, func)
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local TextLabel_2 = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")

	TextButton.Parent = game.CoreGui.SRC_Screen.MainFrame.TabFrame[Taru.."ScrollingFrame"]
	TextButton.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	TextButton.BackgroundTransparency = 0.550
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Size = UDim2.new(1, 0, 0, 50)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = ""
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14.000

	TextLabel.Parent = TextButton
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0302048419, 0, 0.108907469, 0)
	TextLabel.Size = UDim2.new(0, 285, 0, 38)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UICorner.Parent = TextButton

	TextLabel_2.Parent = TextButton
	TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
	TextLabel_2.BackgroundTransparency = 0.650
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.870000005, 0, 0.483999997, 0)
	TextLabel_2.Size = UDim2.new(0.218999997, 0, 0.768999994, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 44.000
	TextLabel_2.TextWrapped = true
	TextLabel_2.Text = TitleTwo

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = TextLabel_2

	TextButton.MouseButton1Click:Connect(function()
		if func then
			task.spawn(function()
				func()
			end)
		end
	end)
end

return UI_AgusNgeseng
