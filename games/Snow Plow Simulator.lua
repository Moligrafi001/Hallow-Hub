-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Snow%20Plow%20Simulator.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Snow Plow Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSnow = false

-- Funções
local function AutoSnow()
	while _G.AutoSnow == true do
		game:GetService("ReplicatedStorage").Events.e8eGb8RgRXFcug8q:FireServer(workspace.HitParts.Snow1, "Snow1", "Stick")
		wait(0.0001)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Snow",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoSnow = Value
   	AutoSnow()
   end,
})