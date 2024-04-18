-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Sword%20Slasher.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | ⚔️ Sword Slasher",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    IntroIcon = "rbxassetid://17091459839",
    ConfigFolder = "⚔️ Sword Slasher"
})
OrionLib:MakeNotification({
    Name = "Última atualização - 16/04/2024",
    Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
    Image = "rbxassetid://17091459839",
    Time = 9
})

-- local
local selectedUpgrade = "Damage"
local selectedSword = "?"

-- Kill Aura
_G.KillAura = false
function KillAura()
		while _G.KillAura == true do
			game:GetService("ReplicatedStorage").EventStorage.Attack:InvokeServer()
			wait(0.0001)
		end
end

-- Auto Upgrade
_G.BuyUPG = false
function BuyUPG()
		while _G.BuyUPG == true do
			if selectedUpgrade == "Critical" then
				game:GetService("ReplicatedStorage").EventStorage.Upgrade:InvokeServer("Luck", "")
			end
			if selectedUpgrade == "Health" then
				game:GetService("ReplicatedStorage").EventStorage.Upgrade:InvokeServer("Defence", "")
			end
			if selectedUpgrade == "Damage" then
				game:GetService("ReplicatedStorage").EventStorage.Upgrade:InvokeServer("Strength", "")
			end
			game:GetService("ReplicatedStorage").EventStorage.Upgrade:InvokeServer(selectedUpgrade, "")
			wait(1)
		end
end

-- Auto Sword
_G.BuySword = false
function BuySword()
		while _G.BuySword == true do
			if selectedSword == "First [50 GEMS]" then
				game:GetService("ReplicatedStorage").EventStorage.EggHandler:FireServer("First", 1)
			end
			wait(1)
		end
end

-- No Damage
_G.NoDamage = false
function NoDamage()
    while _G.NoDamage == true do
      game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 50, 0))
      wait(1)
    end
end

TeleportPlayer()

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
    Name = "Kill Aura",
    Default = false,
    Callback = function(Value)
      _G.KillAura = Value
      KillAura()
    end
})
Menu:AddToggle({
    Name = "No Damage",
    Default = false,
    Callback = function(Value)
      _G.NoDamage = Value
      NoDamage()
    end
})

-- Buy
local Buy = Window:MakeTab({
    Name = "Auto Buy",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Buy:AddSection({
    Name = "Upgrade"
})
Buy:AddDropdown({
    Name = "Select Upgrade",
    Default = selectedUpgrade,
    Options = {"Damage", "Health", "Regen", "Agility", "Critical"},
    Callback = function(value)
      selectedUpgrade = value
    end    
})
Buy:AddToggle({
    Name = "Auto Upgrade",
    Default = false,
    Callback = function(Value)
      _G.BuyUPG = Value
      BuyUPG()
    end
})
local Section = Buy:AddSection({
    Name = "Sword"
})
Buy:AddDropdown({
    Name = "Select Sword",
    Default = selectedSword,
    Options = {"First [50 GEMS]"},
    Callback = function(value)
      selectedSword = value
    end    
})
Buy:AddToggle({
    Name = "Auto Roll",
    Default = false,
    Callback = function(Value)
      _G.BuySword = Value
      BuySword()
    end
})

OrionLib:Init()