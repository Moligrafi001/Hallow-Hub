-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/The%20Upgrade%20Tree%20Of%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | The Upgrade Tree Of Tree",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.FastGains = false
_G.GodMode = false
_G.AutoPoints = false
_G.UpTree = false
_G.AutoHarvest = false
_G.AutoClick = false
_G.AutoBuyTree = false
_G.SacrificeLeaves = false
_G.AutoBuyApple = false
_G.SacrificeApples = false
_G.AutoBuySproot = false
_G.SacrificeSproots = false
_G.AutoBuyPlank = false

-- Auto Buy Trees
_G.BuyTP = false
_G.BuyForest = false
_G.BuyMystic = false

-- Auto Buy Fruits
_G.FruitUPG = false
_G.BackpackUPG = false
_G.LeavesUPG = false

-- Funcoes
local function FastGains()
  while _G.FastGains == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("LeafClicker"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Boosts"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreeLevelSystem"):WaitForChild("XP"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TimeSystem"):WaitForChild("SecondGain"):FireServer()
    wait(0.0001)
   end
end

local function FastApples()
	while _G.FastApples == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Fruit"):FireServer()
		wait(0.0001)
	end
end

local function FruitUPG()
  while _G.FruitUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyFruitUpg"):FireServer()
    wait(0.0001)
   end
end

local function BackpackUPG()
  while _G.BackpackUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyBackpackUpg"):FireServer()
    wait(0.0001)
   end
end

local function LeavesUPG()
  while _G.LeavesUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyLeavesUpg"):FireServer()
    wait(0.0001)
   end
end

local function BuyTP()
  while _G.BuyTP == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.TPGen:FireServer()
    wait(0.0001)
   end
end

local function BuyForest()
  while _G.BuyForest == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.ForestGen:FireServer()
    wait(0.0001)
   end
end

local function BuyMystic()
  while _G.BuyMystic == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.MysticForestGen:FireServer()
    wait(0.0001)
   end
end

local function GodMode()
  while _G.GodMode == true do
    game:GetService("ReplicatedStorage").Remotes.RemoteEvent:FireServer()
    wait(0.0001)
   end
end

local function AutoPoints()
  while _G.AutoPoints == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.TreePoint:FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreePointSystem"):WaitForChild("StatGiver"):FireServer()
    wait(0.0001)
   end
end

local function UpTree()
  while _G.UpTree == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreeLevelSystem"):WaitForChild("LevelUp"):FireServer()
    wait(0.0001)
   end
end

local function AutoHarvest()
  while _G.AutoHarvest == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Harvest"):FireServer()
    wait(0.0001)
   end
end

local function AutoClick()
	while _G.AutoClick == true do
		fireclickdetector(workspace.FirstMap.U0.Main.ClickDetector)
		wait(0.01)
	end
end

local function SacrificeLeaves()
	while _G.SacrificeLeaves == true do
		if workspace.FirstMap.Final:FindFirstChild("FinalTreeU") then
			fireclickdetector(workspace.FirstMap.Final.FinalTreeU.Main.ClickDetector)
		end
		wait(1)
	end
end

local function AutoBuyTree()
	while _G.AutoBuyTree == true do
		if workspace.FirstMap.Upgrades:FindFirstChild("U1") then
			fireclickdetector(workspace.FirstMap.Upgrades.U1.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U2") then
			fireclickdetector(workspace.FirstMap.Upgrades.U2.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U3") then
			fireclickdetector(workspace.FirstMap.Upgrades.U3.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U4") then
			fireclickdetector(workspace.FirstMap.Upgrades.U4.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U5") then
			fireclickdetector(workspace.FirstMap.Upgrades.U5.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U6") then
			fireclickdetector(workspace.FirstMap.Upgrades.U6.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U7") then
			fireclickdetector(workspace.FirstMap.Upgrades.U7.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U8") then
			fireclickdetector(workspace.FirstMap.Upgrades.U8.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U9") then
			fireclickdetector(workspace.FirstMap.Upgrades.U9.Main.ClickDetector)
		end
		if workspace.FirstMap.Upgrades:FindFirstChild("U10") then
			fireclickdetector(workspace.FirstMap.Upgrades.U10.Main.ClickDetector)
		end
		wait(1)
	end
end

local function AutoBuyApple()
	while _G.AutoBuyApple == true do
		if workspace:FindFirstChild("AppleMap") then
			if workspace.AppleMap.Upgrades:FindFirstChild("A1") then
				fireclickdetector(workspace.AppleMap.Upgrades.A1.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A2") then
				fireclickdetector(workspace.AppleMap.Upgrades.A2.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A3") then
				fireclickdetector(workspace.AppleMap.Upgrades.A3.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A4") then
				fireclickdetector(workspace.AppleMap.Upgrades.A4.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A5") then
				fireclickdetector(workspace.AppleMap.Upgrades.A5.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A6") then
				fireclickdetector(workspace.AppleMap.Upgrades.A6.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A7") then
				fireclickdetector(workspace.AppleMap.Upgrades.A7.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A8") then
				fireclickdetector(workspace.AppleMap.Upgrades.A8.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A9") then
				fireclickdetector(workspace.AppleMap.Upgrades.A9.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A10") then
				fireclickdetector(workspace.AppleMap.Upgrades.A10.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A11") then
				fireclickdetector(workspace.AppleMap.Upgrades.A11.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A12") then
				fireclickdetector(workspace.AppleMap.Upgrades.A12.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A13") then
				fireclickdetector(workspace.AppleMap.Upgrades.A13.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A14") then
				fireclickdetector(workspace.AppleMap.Upgrades.A14.Main.ClickDetector)
			end
			if workspace.AppleMap.Upgrades:FindFirstChild("A15") then
				fireclickdetector(workspace.AppleMap.Upgrades.A15.Main.ClickDetector)
			end
		end
	wait(1)
	end
end

local function SacrificeApples()
	while _G.SacrificeApples == true do
		if workspace:FindFirstChild("AppleMap") then
			if workspace.AppleMap.Final:FindFirstChild("FinalTreeA") then
				fireclickdetector(workspace.AppleMap.Final.FinalTreeA.Main.ClickDetector)
			end
		end
	wait(1)
	end
end

local function AutoBuySproot()
	while _G.AutoBuySproot == true do
		if workspace:FindFirstChild("SprootMap") then
			if workspace.SprootMap.Upgrades:FindFirstChild("S1") then
				fireclickdetector(workspace.SprootMap.Upgrades.S1.Main.ClickDetector)
			end
			if workspace.SprootMap.Upgrades:FindFirstChild("S2") then
				fireclickdetector(workspace.SprootMap.Upgrades.S2.Main.ClickDetector)
			end
			if workspace.SprootMap.Upgrades:FindFirstChild("S3") then
				fireclickdetector(workspace.SprootMap.Upgrades.S3.Main.ClickDetector)
			end
			if workspace.SprootMap.Upgrades:FindFirstChild("S4") then
				fireclickdetector(workspace.SprootMap.Upgrades.S4.Main.ClickDetector)
			end
			if workspace.SprootMap.Upgrades:FindFirstChild("S5") then
				fireclickdetector(workspace.SprootMap.Upgrades.S5.Main.ClickDetector)
			end
			if workspace.SprootMap.Upgrades:FindFirstChild("S6") then
				fireclickdetector(workspace.SprootMap.Upgrades.S6.Main.ClickDetector)
			end
		end
	wait(1)
	end
end

local function SacrificeSproots()
	while _G.SacrificeSproots == true do
		if workspace:FindFirstChild("SprootMap") then
			if workspace.SprootMap:FindFirstChild("FinalTreeS") then
				fireclickdetector(workspace.SprootMap.Final.FinalTreeS.Main.ClickDetector)
			end
		end
	wait(1)
	end
end

local function AutoBuyPlank()
	while _G.AutoBuyPlank == true do
		if workspace:FindFirstChild("TreeMap") then
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr1") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr1.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr2") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr2.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr3") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr3.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr4") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr4.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr5") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr5.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr6") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr6.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr7") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr7.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr8") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr9.Main.ClickDetector)
			end
			if workspace.TreeMap.Upgrades:FindFirstChild("Tr9") then
				fireclickdetector(workspace.TreeMap.Upgrades.Tr9.Main.ClickDetector)
			end
		end
	wait(1)
	end
end

-- Menu
local Menu = Window:CreateTab("Leaves", "home")
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
   Name = "Fast Gains",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FastGains = Value
   	FastGains()
   end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Level Up Tree",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpTree = Value
   	UpTree()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuyTree = Value
   	AutoBuyTree()
   end,
})
local Section = Menu:CreateSection("Sacrifice")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Sarifice Leaves",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SacrificeLeaves = Value
   	SacrificeLeaves()
   end,
})

-- Fruits
local Fruits = Window:CreateTab("Apples", "apple")
local Section = Fruits:CreateSection("Auto Farm")
local Toggle =  Fruits:CreateToggle({
   Name = "Fast Apples",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FastApples = Value
   	FastApples()
   end,
})
local Toggle =  Fruits:CreateToggle({
   Name = "Auto Harvest",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoHarvest = Value
   	AutoHarvest()
   end,
})
local Section = Fruits:CreateSection("Upgrade")
local Toggle =  Fruits:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuyApple = Value
   	AutoBuyApple()
   end,
})
local Section = Fruits:CreateSection("Fruit Harvest System")
local Toggle =  Fruits:CreateToggle({
   Name = "Upgrade Fruit/s",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FruitUPG = Value
   	FruitUPG()
   end,
})
local Toggle =  Fruits:CreateToggle({
   Name = "Upgrade Backpack",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BackpackUPG = Value
   	BackpackUPG()
   end,
})
local Toggle =  Fruits:CreateToggle({
   Name = "Upgrade Leaves",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LeavesUPG = Value
   	LeavesUPG()
   end,
})
local Section = Fruits:CreateSection("Sacrifice")
local Toggle =  Fruits:CreateToggle({
   Name = "Auto Sacrifice Apples",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SacrificeApples = Value
   	SacrificeApples()
   end,
})

-- Sproots
local Sproots = Window:CreateTab("Sproots", "bean")
local Section = Sproots:CreateSection("Upgrade")
local Toggle =  Sproots:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuySproot = Value
   	AutoBuySproot()
   end,
})
local Section = Sproots:CreateSection("Sacrifice")
local Toggle =  Sproots:CreateToggle({
   Name = "Auto Sacrifice Sproots",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SacrificeSproots = Value
   	SacrificeSproots()
   end,
})

-- Trees
local Trees = Window:CreateTab("Trees", "trees")
local Section = Trees:CreateSection("Auto Farm")
local Toggle =  Trees:CreateToggle({
   Name = "Auto Tree Points",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoPoints = Value
   	AutoPoints()
   end,
})
local Section = Trees:CreateSection("Upgrade")
local Toggle =  Trees:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuyPlank = Value
   	AutoBuyPlank()
   end,
})
local Section = Trees:CreateSection("Auto Purchase")
local Toggle =  Trees:CreateToggle({
   Name = "Buy TP Generator - 100 Tree Points",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyTP = Value
   	BuyTP()
   end,
})
local Toggle =  Trees:CreateToggle({
   Name = "Buy Forest Generator - 100 TP Generator",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyForest = Value
   	BuyForest()
   end,
})
local Toggle =  Trees:CreateToggle({
   Name = "Buy Mystic Generator - 100 Forest Generator",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyMystic = Value
   	BuyMystic()
   end,
})

-- Sproots
local Cheat = Window:CreateTab("Extra OP", "triangle-alert")
local Section = Cheat:CreateSection("God Mode")
local Toggle =  Cheat:CreateToggle({
   Name = "Infinite Resources",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GodMode = Value
   	GodMode()
   end,
})

-- Credits.
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Section = Credits:CreateSection("Co-Dev")
local Label = Credits:CreateLabel("Discord: world_star_hacker", "at-sign")
local Section = Credits:CreateSection("Discord Server")
local Label = Credits:CreateLabel("https://discord.gg/AESCuek87s")
local Button = Credits:CreateButton({
   Name = "Copy Server Link",
   Callback = function()
   	setclipboard("https://discord.gg/AESCuek87s")
   	toclipboard("https://discord.gg/AESCuek87s")
    end,
})