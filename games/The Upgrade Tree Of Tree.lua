-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/The%20Upgrade%20Tree%20Of%20Tree.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | The Upgrade Tree Of Tree",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  IntroIcon = "rbxassetid://17091459839",
  ConfigFolder = "The Upgrade Tree of Tree"})
OrionLib:MakeNotification({
	Name = "Última atualização - 31/03/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://4483345998",
	Time = 9
})

-- Valores
_G.FastGains = true
_G.GodMode = true
_G.AutoPoints = true
_G.UpTree = true
_G.AutoHarvest = true

-- Auto Buy Trees
_G.BuyTP = true
_G.BuyForest = true
_G.BuyMystic = true

-- Auto Buy Fruits
_G.FruitUPG = true
_G.BackpackUPG = true
_G.LeavesUPG = true

-- Funcoes
function FastGains()
  while _G.FastGains == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("LeafClicker"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Boosts"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreeLevelSystem"):WaitForChild("XP"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Fruit"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TimeSystem"):WaitForChild("SecondGain"):FireServer()
    wait(0.0001)
   end
end

function FruitUPG()
  while _G.FruitUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyFruitUpg"):FireServer()
    wait(0.0001)
   end
end

function BackpackUPG()
  while _G.BackpackUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyBackpackUpg"):FireServer()
    wait(0.0001)
   end
end

function LeavesUPG()
  while _G.LeavesUPG == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyLeavesUpg"):FireServer()
    wait(0.0001)
   end
end

function BuyTP()
  while _G.BuyTP == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.TPGen:FireServer()
    wait(0.0001)
   end
end

function BuyForest()
  while _G.BuyForest == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.ForestGen:FireServer()
    wait(0.0001)
   end
end

function BuyMystic()
  while _G.BuyMystic == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.MysticForestGen:FireServer()
    wait(0.0001)
   end
end

function GodMode()
  while _G.GodMode == true do
    game:GetService("ReplicatedStorage").Remotes.RemoteEvent:FireServer()
    wait(0.0001)
   end
end

function AutoPoints()
  while _G.AutoPoints == true do
    game:GetService("ReplicatedStorage").Remotes.TreePointSystem.TreePoint:FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreePointSystem"):WaitForChild("StatGiver"):FireServer()
    wait(0.0001)
   end
end

function UpTree()
  while _G.UpTree == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreeLevelSystem"):WaitForChild("LevelUp"):FireServer()
    wait(0.0001)
   end
end

function AutoHarvest()
  while _G.AutoHarvest == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("Harvest"):FireServer()
    wait(0.0001)
   end
end

-- Menu
local Menu = Window:MakeTab({
	Name = "Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Menu:AddSection({
	Name = "Auto Farm"
})
Menu:AddToggle({
	Name = "Fast Gains",
	Default = false,
	Callback = function(Value)
		_G.FastGains = Value
		FastGains()
	end
})
Menu:AddToggle({
	Name = "Auto Level Up Tree",
	Default = false,
	Callback = function(Value)
		_G.UpTree = Value
		UpTree()
	end
})

-- Fruits
local Fruits = Window:MakeTab({
	Name = "Fruits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Fruits:AddSection({
	Name = "Auto Farm"
})
Fruits:AddToggle({
	Name = "Auto Harvest",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest = Value
		AutoHarvest()
	end
})
local Section = Fruits:AddSection({
	Name = "Manual Purchase"
})
Fruits:AddButton({
	Name = "Upgrade Fruits",
	Callback = function()
      		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyFruitUpg"):FireServer()
  	end    
})
Fruits:AddButton({
	Name = "Upgrade Backpack",
	Callback = function()
      		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyBackpackUpg"):FireServer()
  	end    
})
Fruits:AddButton({
	Name = "Upgrade Leaves/s",
	Callback = function()
      		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FruitHarvestSystem"):WaitForChild("BuyLeavesUpg"):FireServer()
  	end    
})
local Section = Fruits:AddSection({
	Name = "Auto Purchase"
})
Fruits:AddToggle({
	Name = "Upgrade Fruits",
	Default = false,
	Callback = function(Value)
		_G.FruitUPG = Value
		FruitUPG()
	end
})
Fruits:AddToggle({
	Name = "Upgrade Backpack",
	Default = false,
	Callback = function(Value)
		_G.BackpackUPG = Value
		BackpackUPG()
	end
})
Fruits:AddToggle({
	Name = "Upgrade Leave/s",
	Default = false,
	Callback = function(Value)
		_G.LeavesUPG = Value
		LeavesUPG()
	end
})

-- Trees
local Trees = Window:MakeTab({
	Name = "Trees",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Trees:AddSection({
	Name = "Auto Farm"
})
Trees:AddToggle({
	Name = "Auto Tree Points",
	Default = false,
	Callback = function(Value)
		_G.AutoPoints = Value
		AutoPoints()
	end
})
local Section = Trees:AddSection({
	Name = "Manual Purchase"
})
Trees:AddButton({
	Name = "Buy TP Generator - 100 Tree Points",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.TreePointSystem.TPGen:FireServer()
  	end    
})
Trees:AddButton({
	Name = "Buy Forest Generator - 100 TP Generator",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.TreePointSystem.ForestGen:FireServer()
  	end    
})
Trees:AddButton({
	Name = "Buy Mystic Generator - 100 Forest Generator",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.TreePointSystem.MysticForestGen:FireServer()
  	end    
})
local Section = Trees:AddSection({
	Name = "Auto Purchase"
})
Trees:AddToggle({
	Name = "Buy TP Generator - 100 Tree Points",
	Default = false,
	Callback = function(Value)
		_G.BuyTP = Value
		BuyTP()
	end
})
Trees:AddToggle({
	Name = "Buy Forest Generator - 100 TP Generator",
	Default = false,
	Callback = function(Value)
		_G.BuyForest = Value
		BuyForest()
	end
})
Trees:AddToggle({
	Name = "Buy Mystic Generator - 100 Forest Generator",
	Default = false,
	Callback = function(Value)
		_G.BuyMystic = Value
		BuyMystic()
	end
})

-- Cheat
local Cheat = Window:MakeTab({
	Name = "Shhh...",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Cheat:AddSection({
	Name = "Powerful Option"
})
Cheat:AddToggle({
	Name = "OP GAINS",
	Default = false,
	Callback = function(Value)
		_G.GodMode = Value
		GodMode()
	end
})
Cheat:AddLabel("Cuidado com essa opção! É muito poderosa!")

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()