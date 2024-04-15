-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Legends%20Of%20Speed.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | Legends Of Speed ⚡",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    ConfigFolder = "Legends Of Speed ⚡"
})
OrionLib:MakeNotification({
    Name = "Última atualização - 15/04/2024",
    Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
    Image = "rbxassetid://4483345998",
    Time = 9
})

-- Auto XP
_G.AutoXP = false
function AutoXP()
		while _G.AutoXP == true do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Desert")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Space")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Legends Highway")
			wait(0.0001)
		end
end

-- Farm Steps
_G.FarmS = false
function FarmS()
		while _G.FarmS == true do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Desert")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Space")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Legends Highway")
			wait(0.0001)
		end
end

-- Farm Gems
_G.FarmG = false
function FarmG()
		while _G.FarmG == true do
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Desert")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Space")
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "Legends Highway")
			wait(0.0001)
		end
end

-- Auto Rebirth
_G.AutoRebirth = false
function AutoRebirth()
		while _G.AutoRebirth == true do
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
			wait(1)
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
    Name = "Farm XP",
    Default = false,
    Callback = function(Value)
      _G.AutoXP = Value
      AutoXP()
    end
})
Menu:AddToggle({
    Name = "Farm Gems",
    Default = false,
    Callback = function(Value)
      _G.FarmG = Value
      FarmG()
    end
})
Menu:AddToggle({
    Name = "Farm Steps",
    Default = false,
    Callback = function(Value)
      _G.FarmS = Value
      FarmS()
    end
})
local Section = Menu:AddSection({
    Name = "Others"
})
Menu:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
      _G.AutoRebirth = Value
      AutoRebirth()
    end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()