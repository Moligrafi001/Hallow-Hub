local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | ❄️Snow Incremental Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSnow = false
_G.AutoRebirth = false

-- Funções
local function AutoSnow()
	while _G.AutoSnow == true do
		game:GetService("ReplicatedStorage").Events.StatChange:FireServer("SnowFlakes", true, 999999999)
		wait(0.01)
	end
end
local function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.StatChange:FireServer("Rebirth", true,1)
		wait(0.05)
	end
end
local function BuyAll()
	game:GetService("ReplicatedStorage").Events.ShovelBuy:FireServer(0, "Buy", "Larger Shovel")
	game:GetService("ReplicatedStorage").Events.ShovelBuy:FireServer(0, "Buy", "Dual-Blade Plow")
end