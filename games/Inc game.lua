-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Inc%20game.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Ice Tycoon",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoClick = false
_G.AutoRebirth = false
_G.AutoUp = false

-- Funções
local function AutoClick()
	while _G.AutoClick == true do
		game:GetService("ReplicatedStorage").Events.ButtonClicked:FireServer()
		wait(0.05)
	end
end
local function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Prestige:FireServer()
		wait(0.1)
	end
end
local function AutoUp()
	while _G.AutoUp == true do
		game:GetService("ReplicatedStorage").Events.BuyTreeUp:FireServer("Start")
		for v = 1, 61 do
		local i = v .. ""
		game:GetService("ReplicatedStorage").Events.BuyTreeUp:FireServer(i)
		end
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Click",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoClick = Value
   	AutoClick()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoRebirth = Value
   	AutoRebirth()
   end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoUp = Value
   	AutoUp()
   end,
})