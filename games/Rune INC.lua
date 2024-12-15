-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Rune%20INC.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Rune Incremental",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoRoll = false
_G.BuyMulti = false
_G.BuyLuck = false
_G.BuySpeed = false
_G.AutoAscend = false
_G.AscMulti = false
_G.MoreSucess = false
_G.MoreAscend = false
_G.GemRoll = false
_G.GemMulti = false
_G.MultiGem = false
_G.GemLuck = false
_G.GemSpeed = false

-- Funções
local function AutoRoll()
	while _G.AutoRoll == true do
		game:GetService("ReplicatedStorage").RollRemoteEvent.Roll:FireServer()
		wait(0.05)
	end
end
local function BuyMulti()
	while _G.BuyMulti == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2Upgrades").leaderstats.MultiUp)
		wait(0.5)
	end
end
local function BuyLuck()
	while _G.BuyLuck == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2Upgrades").leaderstats.LuckUp)
		wait(0.5)
	end
end
local function BuySpeed()
	while _G.BuySpeed == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2Upgrades").leaderstats.RollSpeedUp)
		wait(0.5)
	end
end
local function AutoAscend()
	while _G.AutoAscend == true do
		game:GetService("ReplicatedStorage").Ascension.Ascend:FireServer()
		wait(0.5)
	end
end
local function AscMulti()
	while _G.AscMulti == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames.AscensionUpgrades.CurrencyFolder.MultiUp2)
		wait(0.5)
	end
end
local function MoreSucess()
	while _G.MoreSucess == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames.AscensionUpgrades.CurrencyFolder.LuckUp2)
		wait(0.5)
	end
end
local function MoreAscend()
	while _G.MoreAscend == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames.AscensionUpgrades.CurrencyFolder.AscensionUp)
		wait(0.5)
	end
end
local function GemMulti()
	while _G.GemMulti == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2GemUpgrades").leaderstats.GemMultiUp)
		wait(0.5)
	end
end
local function GemRoll()
	while _G.GemRoll == true do
		game:GetService("ReplicatedStorage").RollRemoteEvent.GemRoll:FireServer()
		wait(0.5)
	end
end
local function MultiGem()
	while _G.MultiGem == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2GemUpgrades").leaderstats.MultiUp3)
		wait(0.5)
	end
end
local function GemLuck()
	while _G.GemLuck == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2GemUpgrades").leaderstats.GemLuckUp)
		wait(0.5)
	end
end
local function LuckGem()
	while _G.LuckGem == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2GemUpgrades").leaderstats.LuckUp3)
		wait(0.5)
	end
end
local function GemSpeed()
	while _G.GemSpeed == true do
		game:GetService("ReplicatedStorage").Upgrades.Upgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.UI.Frame.Frames:FindFirstChild("2GemUpgrades").leaderstats.GemRollSpeedUp)
		wait(0.5)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Roll",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoRoll = Value
   	AutoRoll()
   end,
})
local Section = Menu:CreateSection("Auto Buy Upgrades")
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Multi",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyMulti = Value
   	BuyMulti()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Luck",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyLuck = Value
   	BuyLuck()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Roll Speed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuySpeed = Value
   	BuySpeed()
   end,
})

-- Ascend
local Ascend = Window:CreateTab("Ascension", "sparkles")
local Section = Ascend:CreateSection("Auto Farm")
local Toggle =  Ascend:CreateToggle({
   Name = "Auto Ascend",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoAscend = Value
   	AutoAscend()
   end,
})
local Section = Ascend:CreateSection("Auto Buy Upgrades")
local Toggle =  Ascend:CreateToggle({
   Name = "Upgrade Multi",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AscMulti = Value
   	AscMulti()
   end,
})
local Toggle =  Ascend:CreateToggle({
   Name = "Upgrade Sucess",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MoreSucess = Value
   	MoreSucess()
   end,
})
local Toggle =  Ascend:CreateToggle({
   Name = "Upgrade Ascencions",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MoreAscend = Value
   	MoreAscend()
   end,
})

-- Gem
local Gem = Window:CreateTab("Gem", "diamond")
local Section = Gem:CreateSection("Auto Farm")
local Toggle =  Gem:CreateToggle({
   Name = "Auto Roll Gem",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GemRoll = Value
   	GemRoll()
   end,
})
local Section = Gem:CreateSection("Auto Buy Upgrades")
local Toggle =  Gem:CreateToggle({
   Name = "Upgrade GEM Multi",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GemMulti = Value
   	GemMulti()
   end,
})
local Toggle =  Gem:CreateToggle({
   Name = "Upgrade Multi",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MultiGem = Value
   	MultiGem()
   end,
})
local Toggle =  Gem:CreateToggle({
   Name = "Upgrade GEM Luck",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GemLuck = Value
   	GemLuck()
   end,
})
local Toggle =  Gem:CreateToggle({
   Name = "Upgrade Luck",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LuckGem = Value
   	LuckGem()
   end,
})
local Toggle =  Gem:CreateToggle({
   Name = "Upgrade GEM Speed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GemSpeed = Value
   	GemSpeed()
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