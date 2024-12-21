local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | ❄️Snow Incremental Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

local function AutoSnow()
	while _G.AutoSnow == true do
		game:GetService("ReplicatedStorage").Events.StatChange:FireServer("SnowFlakes", true, 999999999)
		wait(0.01)
	end
end

-- Rebirth
game:GetService("ReplicatedStorage").Events.StatChange:FireServer("Rebirth", true,1)


-- Shovel
local args = {
    [1] = 1500,
    [2] = "Buy",
    [3] = "Larger Shovel"
}

game:GetService("ReplicatedStorage").Events.ShovelBuy:FireServer(unpack(args))

local args = {
    [1] = 50000,
    [2] = "Buy",
    [3] = "Dual-Blade Plow"
}

game:GetService("ReplicatedStorage").Events.Shovel