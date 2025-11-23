local DRAGING = {}

function DRAGING:Drag(frame)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local UserInputService = game:GetService("UserInputService")
	local Camera = workspace.CurrentCamera
	local MainFrame = frame

	local function update(input)
		local delta = input.Position - dragStart
		MainFrame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position

			Camera.CameraType = Enum.CameraType.Scriptable

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false

					Camera.CameraType = Enum.CameraType.Custom
				end
			end)
		end
	end)

	MainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

return DRAGING
