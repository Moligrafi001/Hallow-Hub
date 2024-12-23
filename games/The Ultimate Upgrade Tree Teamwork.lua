-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/The%20Ultimate%20Upgrade%20Tree%20Teamwork.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | The Ultimate Upgrade Tree: Teamwork",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})
-- Valores
_G.AutoBuy = false

-- Funções
local function AutoBuy()
	print("Função chamada!")
	while _G.AutoBuy == true do
		print("Looo iniciado!")
		for _, button in pairs(workspace.Buttons.PointUpgrades:GetChildren()) do
			if button.Bought.Value == false then
				fireclickdetector(button.ClickDetector)
				print("Apertei o " .. button.name)
			end
		end
		wait(1)
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
   end,
})