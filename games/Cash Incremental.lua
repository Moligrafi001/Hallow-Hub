-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Cash%20Incremental.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Cash Incremental",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoCollect = false
_G.UpgMainCash = false
_G.UpgMainXP = false
_G.UpgMainBag = false
_G.UpgMainWalk = false
_G.UpgMainRang = false
_G.UpgMainLimit = false
_G.UpgMainRate = false
_G.UpgMainBulk = false
_G.AutoRebirth = false

-- Funções
local function AutoCollect()
	while _G.AutoCollect == true do
		for _, child in pairs(workspace.Spawned:GetChildren()) do
			local childID = child.Name
			game:GetService("ReplicatedStorage").Remotes.CollectPart:FireServer(childID)
		end
		wait(0.5)
	end
end
local function UpgMainCash()
	while _G.UpgMainCash == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreCash", true, "Single")
		wait(0.33)
	end
end
local function UpgMainXP()
	while _G.UpgMainXP == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreXP", true, "Single")
		wait(0.33)
	end
end
local function UpgMainBag()
	while _G.UpgMainBag == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreBagMultiplier", true, "Single")
		wait(0.33)
	end
end
local function UpgMainWalk()
	while _G.UpgMainWalk == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreWalkspeed", true, "Single")
		wait(0.33)
	end
end
local function UpgMainRang()
	while _G.UpgMainRang == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreCollectionRange", true, "Single")
		wait(0.33)
	end
end
local function UpgMainLimit()
	while _G.UpgMainLimit == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreCap", true, "Single")
		wait(0.33)
	end
end
local function UpgMainRate()
	while _G.UpgMainRate == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "LessSpawnCooldown", true, "Single")
		wait(0.33)
	end
end
local function UpgMainBulk()
	while _G.UpgMainBulk == true do
		game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer("MainBoard", "MoreSpawnBulk", true, "Single")
		wait(0.33)
	end
end
local function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
		wait(0.5)
	end
end

-- Menu
local Menu = Window:CreateTab("Cash", "dollar-sign")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Collect Cash",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCollect = Value
   	AutoCollect()
   end,
})
local Section = Menu:CreateSection("Main Upgrades")
local Toggle =  Menu:CreateToggle({
   Name = "More Cash",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainCash = Value
   	UpgMainCash()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More XP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainXP = Value
   	UpgMainXP()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More Bag Multiplier",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainBag = Value
   	UpgMainBag()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More WalkSpeed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainWalk = Value
   	UpgMainWalk()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More Range",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainRang = Value
   	UpgMainRang()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More Spawn Limit",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainLimit = Value
   	UpgMainLimit()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Increase Spawn Rate",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainRate = Value
   	UpgMainRate()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "More Spawn Bulk",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgMainBulk = Value
   	UpgMainBulk()
   end,
})

-- XP Shop
local XpShop = Window:CreateTab("XP Shop", "sparkles")
local Section = XpShop:CreateSection("Auto Buy Upgrades")
local Toggle =  XpShop:CreateToggle({
   Name = "More Cash",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCollect = Value
   	AutoCollect()
   end,
})

-- Rebirth
local RebirthTab = Window:CreateTab("Rebirth", "gem")
local Section = RebirthTab:CreateSection("Auto Farm")
local Toggle =  RebirthTab:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoRebirth = Value
   	AutoRebirth()
   end,
})
local Section = RebirthTab:CreateSection("Auto Buy Upgrades")
local Toggle =  RebirthTab:CreateToggle({
   Name = "Auto Collect Cash",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCollect = Value
   	AutoCollect()
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