local DRAGING = {}

function DRAGING:Drag(frame)
    local dragging = false
    local dragInput
    local dragStart
    local startPos

    local UIS = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera
    local MainFrame = frame

    local function update(input)
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = MainFrame.Position

            -- Disable camera
            Camera.CameraType = Enum.CameraType.Scriptable

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false

                    -- Re-enable camera
                    Camera.CameraType = Enum.CameraType.Custom
                end
            end)
        end
    end)

    MainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

return DRAGING
