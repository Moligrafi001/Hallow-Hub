-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Computer%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find Buttons!👀",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

local function AutoBuy()
	while _G.AutoBuy == true do
		for _, upgrade in pairs(workspace.Upgrades:GetChildren()) do
			if upgrade:FindFirstChild("Bought") and upgrade:FindFirstChild("Visible") then
				if upgrade.Bought.Value == false and upgrade.Visible.Value == true then
						fireclickdetector(upgrade.ClickDetector)
				end
			end
		end
		wait(1)
	end
end