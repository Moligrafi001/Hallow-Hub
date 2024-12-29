local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Ice Tycoon",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoIce = false

-- Funções
local function AutoIce()
	while _G.AutoIce == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == game.Players.LocalPlayer then
				fireclickdetector(tycoon.Essentials.Freezer.Pump.Click.ClickDetector)
			end
		end
	wait(0.05)
	end
end

-- Menu
local Menu = Window:CreateTab("Cash", "dollar-sign")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Click Pump",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoIce = Value
   	AutoIce()
   end,
})