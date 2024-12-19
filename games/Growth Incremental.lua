-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Growth%20Incremental.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | 📈 Growth Incremental!",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoXP = false
_G.ClaimTime = false
_G.AutoMoney = false
_G.LPsSpLmt = false
_G.LPsRange = false
_G.LpsOrbR = false
_G.AutoCashUpg = false

-- Funções
local function AutoXP()
	while _G.AutoXP == true do
		game:GetService("ReplicatedStorage").HandleXP:FireServer("XP", math.huge)
		wait(1)
	end
end
local function ClaimTime()
	while _G.ClaimTime == true do
		for time = 1, 9 do
			game:GetService("ReplicatedStorage").GiftFolder.ClaimGift:InvokeServer(time)
		end
		wait(0.5)
	end
end
local function AutoMoney()
	while _G.AutoMoney == true do
		game:GetService("ReplicatedStorage").HandleMoney:FireServer(0)
		wait(0.01)
	end
end
local function LPsUpgrades()
	while _G.LPsSpLmt == true do
		game:GetService("ReplicatedStorage").UpgradeEvent:FireServer(45, "LP", "SLupg", "SpawnLimit", 2, true, false, false, true, 1)
		wait(0.33)
	end
	while _G.LPsRange == true do
		game:GetService("ReplicatedStorage").UpgradeEvent:FireServer(25, "LP", "Rupg", "Range", 1, true, false, false, true, 2)
		wait(0.33)
	end
	while _G.LpsOrbR == true do
		game:GetService("ReplicatedStorage").UpgradeEvent:FireServer(10, "LP", "Oupg", "OrbRange", 5, true, false, false, true, 3)
		wait(0.33)
	end
end
local function AutoCashUpg()
	while _G.AutoCashUpg == true do
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 1, 15, "xMoney", 2)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Add", 2, 50, "BaseMoney", 1)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 3, 200, "xMoney", 3)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 4, 450, "xMoney", 5)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Add", 5, 2500, "BaseMoney", 3)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 6, 6000, "xMoney", 7)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Add", 7, 35000, "BaseMoney", 1)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 8, 50000, "xMoney", 2)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Add", 9, 250000, "BaseMoney", 2)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 10, 1000000, "xMoney", 1.5)
		game:GetService("ReplicatedStorage").HandleStats:FireServer("Multiply", 11, 750000, "xMoney", 1.5)
		wait(0.33)
	end
end

-- Menu
local Menu = Window:CreateTab("Money", "dollar-sign")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Money",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoMoney = Value
   	AutoMoney()
   end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCashUpg = Value
   	AutoCashUpg()
   end,
})
local Section = Menu:CreateSection("Extra")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Claim Time Rewards",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ClaimTime = Value
   	ClaimTime()
   end,
})
-- LPs Tab
local LPsTab = Window:CreateTab("LPs", "sparkles")
local Section = LPsTab:CreateSection("Auto Farm")
local Toggle =  LPsTab:CreateToggle({
   Name = "Auto XP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoXP = Value
   	AutoXP()
   end,
})
local Section = LPsTab:CreateSection("Upgrade")
local Toggle =  LPsTab:CreateToggle({
   Name = "Upgrade Spawn Limit",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LPsSpLmt = Value
   	LPsUpgrades()
   end,
})
local Toggle =  LPsTab:CreateToggle({
   Name = "Upgrade Range",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LPsRange = Value
   	LPsUpgrades()
   end,
})
local Toggle =  LPsTab:CreateToggle({
   Name = "Upgrade Range",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LpsOrbR = Value
   	LPsUpgrades()
   end,
})

-- Credits.
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Section = Credits:CreateSection("Co-Dev")
local Label = Credits:CreateLabel("Discord: world_star_hacker", "at-sign")
local Section = Credits:CreateSection("Discord Server")
local Label = Credits:CreateLabel("discord.gg/AESCuek87s")
local Button = Credits:CreateButton({
   Name = "Copy Server Link",
   Callback = function()
   	setclipboard("discord.gg/AESCuek87s")
   	toclipboard("discord.gg/AESCuek87s")
    end,
})