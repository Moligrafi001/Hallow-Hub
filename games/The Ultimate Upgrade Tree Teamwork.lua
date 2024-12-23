----- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/The%20Ultimate%20Upgrade%20Tree%20Teamwork.lua",true))()
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
_G.PrestUpg = false
_G.AutoPrest = false
_G.TimeUpg = false
_G.TimeWarp = false
_G.ReinUpg = false
_G.Reincarnate = false

-- Funções
local function AutoBuy()
	while _G.AutoBuy == true do
		for _, button in pairs(workspace.Buttons.PointUpgrades:GetChildren()) do
			if button.Bought.Value == false and button.Transparency == 0 then
				fireclickdetector(button.ClickDetector)
			end
		end
		wait(0.1)
	end
end
local function PrestUpg()
	while _G.PrestUpg == true do
		for _, button in pairs(workspace.Buttons.PrestigeUpgrades:GetChildren()) do
			if button.Bought.Value == false and button.Transparency == 0 then
				fireclickdetector(button.ClickDetector)
			end
		end
		wait(0.1)
	end
end
local function AutoPrest()
	while _G.AutoPrest == true do
		fireclickdetector(workspace.Buttons.PrestigeUpgrades.Prestige.ClickDetector)
		wait(0.1)
	end
end
local function TimeUpg()
	while _G.TimeUpg == true do
		for _, button in pairs(workspace.Buttons.TimeUpgrades:GetChildren()) do
			if button.Name ~= "TimeWarp" then
				if button.Bought.Value == false and button.Transparency == 0 then
					fireclickdetector(button.ClickDetector)
				end
			end
		end
		wait(0.1)
	end
end
local function TimeWarp()
	while _G.TimeWarp == true do
		fireclickdetector(workspace.Buttons.TimeUpgrades.TimeWarp.ClickDetector)
		wait(0.1)
	end
end
local function ReinUpg()
	while _G.ReinUpg == true do
		for _, button in pairs(workspace.Buttons.ReinUpgrades:GetChildren()) do
			if button.Name ~= "Reincarnate" then
				if button.Bought.Value == false and button.Transparency == 0 then
					fireclickdetector(button.ClickDetector)
				end
			end
		end
		wait(0.1)
	end
end
local function Reincarnate()
	while _G.Reincarnate == true do
		fireclickdetector(workspace.Buttons.ReinUpgrades.Reincarnate.ClickDetector)
		wait(0.1)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Points")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Upgrade Points",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	AutoBuy()
   end,
})
local Section = Menu:CreateSection("Prestige")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Prestige",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoPrest = Value
   	AutoPrest()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Upgrade Prestige",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PrestUpg = Value
   	PrestUpg()
   end,
})
local Section = Menu:CreateSection("Time")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Time Warp",
   CurrentValue = false,
   Callback = function(Value)
   	_G.TimeWarp = Value
   	TimeWarp()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Upgrade Time",
   CurrentValue = false,
   Callback = function(Value)
   	_G.TimeUpg = Value
   	TimeUpg()
   end,
})
local Section = Menu:CreateSection("Rein")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Reincarnate",
   CurrentValue = false,
   Callback = function(Value)
   	_G.Reincarnate = Value
   	Reincarnate()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Upgrade Rein",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ReinUpg = Value
   	ReinUpg()
   end,
})