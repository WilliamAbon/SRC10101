local lt2 = {}

function lt2.AdaNotif(Text)
    local SendUserNotice = game:GetService("ReplicatedStorage").Notices.SendUserNotice
    return SendUserNotice:Fire(Text)
end

function lt2.CheckLand()
    local hasil = nil
    for _,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
            return true
        else
            hasil = false
        end
    end
	return hasil
end

function lt2.BeliLandGratis(landNya)
    if lt2.CheckLand() then
        return lt2.AdaNotif('Lu Udah Punya Land Coy, Gak Boleh Beli Lagi.')
    else
        local ClientPurchasedProperty = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty
        local Player = game.Players.LocalPlayer

        if not landNya:IsA("Model") then
            return print("land yang mana wehh")
        else
            ClientPurchasedProperty:FireServer(landNya, landNya.OriginSquare.CFrame.p)
            Player.Character.HumanoidRootPart.CFrame = landNya.OriginSquare.CFrame + Vector3.new(0, 5, 0)
        end
    end
    
end

function lt2.Esekusi(landNya)
    local ClientExpandedProperty = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
    local OriginSquare = landNya:FindFirstChild("OriginSquare")
    local Property = landNya
    local Squares = #Property:GetChildren()
    if Squares >= 26 then
        return lt2.AdaNotif('uhhh.. bro landnya udah full')--cooldown is 60s
    end
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 40, OriginSquare.Position.Y, OriginSquare.Position.Z))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 40, OriginSquare.Position.Y, OriginSquare.Position.Z))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X, OriginSquare.Position.Y, OriginSquare.Position.Z + 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X, OriginSquare.Position.Y, OriginSquare.Position.Z - 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 40, OriginSquare.Position.Y, OriginSquare.Position.Z + 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 40, OriginSquare.Position.Y, OriginSquare.Position.Z - 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 40, OriginSquare.Position.Y, OriginSquare.Position.Z + 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 40, OriginSquare.Position.Y, OriginSquare.Position.Z - 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 80, OriginSquare.Position.Y, OriginSquare.Position.Z))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 80, OriginSquare.Position.Y, OriginSquare.Position.Z))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X, OriginSquare.Position.Y, OriginSquare.Position.Z + 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X, OriginSquare.Position.Y, OriginSquare.Position.Z - 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 80, OriginSquare.Position.Y, OriginSquare.Position.Z + 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 80, OriginSquare.Position.Y, OriginSquare.Position.Z - 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 80, OriginSquare.Position.Y, OriginSquare.Position.Z + 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 80, OriginSquare.Position.Y, OriginSquare.Position.Z - 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 40, OriginSquare.Position.Y, OriginSquare.Position.Z + 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 40, OriginSquare.Position.Y, OriginSquare.Position.Z + 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 80, OriginSquare.Position.Y, OriginSquare.Position.Z + 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 80, OriginSquare.Position.Y, OriginSquare.Position.Z - 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 80, OriginSquare.Position.Y, OriginSquare.Position.Z + 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 80, OriginSquare.Position.Y, OriginSquare.Position.Z - 40))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X + 40, OriginSquare.Position.Y, OriginSquare.Position.Z - 80))
    ClientExpandedProperty:FireServer(Property, CFrame.new(OriginSquare.Position.X - 40, OriginSquare.Position.Y, OriginSquare.Position.Z - 80))
end

function lt2.FullLandGratis()
    if lt2.CheckLand() then
        for _,v in pairs(workspace.Properties:GetChildren()) do
            if v.Owner.Value == game.Players.LocalPlayer then
                lt2.Esekusi(v)
            end
        end
    else
        lt2.AdaNotif('Lu Harus Punya Land Dulu Woy')
    end
end

function lt2.LoadSlot(angka)
    return game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad:InvokeServer(angka, game.Players.LocalPlayer)
end

function lt2.DropAxeSemua()
	local player, remote = game.Players.LocalPlayer, game.ReplicatedStorage.Interaction.ClientInteracted
	for _,v in pairs(player.Backpack:GetChildren()) do
		if v.Name == "Tool" and v:FindFirstChild("CuttingTool") and v.CuttingTool.Value == True then
			remote:FireServer(v, "Drop tool", player.Character.HumanoidRootPart.CFrame)
		end
	end
end

return lt2

