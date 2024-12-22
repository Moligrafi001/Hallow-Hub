-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Computer%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Computer Upgrade Tree",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoBuy = false
_G.Refresher = false

-- Funções
local function AutoBuy()
	while _G.AutoBuy == true do
		for _, upgrade in pairs(workspace.Upgrades:GetChildren()) do
			if upgrade:FindFirstChild("Bought") and upgrade:FindFirstChild("Visible") then
				if upgrade.Bought.Value == false and upgrade.Visible.Value == true then
						fireclickdetector(upgrade.ClickDetector)
				end
			end
		end
		if workspace.Upgrades.P12.Visible == true then
			fireclickdetector(workspace.Upgrades.P12.ClickDetector)
		end
		wait(1)
	end
end
local function Refresher()
	while _G.Refresher == true do
		AutoBuy()
		wait(0.5)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	AutoBuy()
   	_G.Refresher = true
   	Refresher()
   end,
})