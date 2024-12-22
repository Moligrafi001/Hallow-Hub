-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Ultimate%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Ultimate Upgrade Tree!",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoMoney = false
_G.BuyDiamon = false
_G.AddTime = false

-- Funções
local function Unique()
	while _G.AutoMoney == true do
		game:GetService("ReplicatedStorage").Remotes.currencyModuleRemotes.coinsAddRE:FireServer()
		wait(0.01)
	end
	while _G.BuyDiamon == true do
		game:GetService("ReplicatedStorage").Remotes.currencyModuleRemotes.buyDiamondCoinMultiplierRE:FireServer()
		wait(0.01)
	end
	while _G.AddTime == true do
		game:GetService("ReplicatedStorage").Remotes.currencyModuleRemotes.timeAddRE:FireServer()
		wait(0.01)
	end
end
local function Refresher()
	while _G.AutoMoney == true or _G.BuyDiamon == true or _G.AddTime == true do
		Unique()
		print("Recarregado!")
		wait(1)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Money",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoMoney = Value
   	Unique()
   	Refresher()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Buy Diamond",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyDiamon = Value
   	Unique()
   	Refresher()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Add Time",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AddTime = Value
   	Unique()
   	Refresher()
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