-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Swords%20Battle%20Simulator.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | The Ultimate Upgrade Tree: Teamwork",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

for _, button in pairs(workspace.Buttons.PointUpgrades:GetChildren()) do
	if button.Bought.Value == false then
		fireclickdetector(button.ClickDetector)
	end
end