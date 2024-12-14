-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Slash%20Mobs%20Simulator.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | ⚔️ Slash Mobs Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.FastRegen = false

-- Funções
local function FastRegen()
	while _G.FastRegen == true do
		game:GetService("ReplicatedStorage").Remote.Event.Up:FindFirstChild("[C-S]TryRegen"):FireServer(1)
		wait(0.0001)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Fast Regen",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FastRegen = Value
   	FastRegen()
   end,
})