while true do
	for _, upgrade in pairs(workspace.Upgrades:GetChildren()) do
		if upgrade:FindFirstChild("Bough") and upgrade:FindFirstChild("Visible") then
			if upgrade.Bought.Value == false and upgrade.Visible.Value == true then
				fireclickdetector(upgrade.ClickDetector)
			end
		end
	end
	wait(1)
end