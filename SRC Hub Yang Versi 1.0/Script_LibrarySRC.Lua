local UI_AgusNgeseng = {}

function UI_AgusNgeseng:NambahUI()
	if game.CoreGui:FindFirstChild("SRCHub_Screen") then
		game.CoreGui:FindFirstChild("SRCHub_Screen"):Destroy()
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

	ScreenGui.Name = "SRCHub_Screen"
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

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(9, 2, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(9, 39, 16))}
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
	LogoFrame.BackgroundColor3 = Color3.fromRGB(33, 40, 28)
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
	TextLabel.Position = UDim2.new(0.5, 0, 0.454234689, 0)
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
	TextLabel_2.Position = UDim2.new(0.5, 0, 0.76393503, 0)
	TextLabel_2.Size = UDim2.new(1, 0, 0.236065313, 0)
	TextLabel_2.Font = Enum.Font.RobotoMono
	TextLabel_2.Text = "Versi 1.0"
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
	TextLabel_3.Position = UDim2.new(0.49274534, 0, 0.135316834, 0)
	TextLabel_3.Size = UDim2.new(1, 0, 0.314471036, 0)
	TextLabel_3.Font = Enum.Font.RobotoMono
	TextLabel_3.Text = "SRC hub"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 34.000
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
	TextLabel_4.Position = UDim2.new(0.820710301, 0, 0, 0)
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
end

return UI_AgusNgeseng
