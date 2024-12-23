for _, button in pairs(workspace.Buttons.PointUpgrades:GetChildren()) do
	if button.Bought.Value == false then
		fireclickdetector(button.ClickDetector)
	end
end