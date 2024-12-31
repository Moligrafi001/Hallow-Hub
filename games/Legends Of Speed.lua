-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Legends%20Of%20Speed.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Legends Of Speed",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoXP = false
_G.FarmS = false
_G.FarmG = false
_G.AutoRebirth = false
_G.AutoHoop = true

-- Funções
local function AutoXP()
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
local function FarmS()
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
local function FarmG()
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
local function AutoRebirth()
		while _G.AutoRebirth == true do
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
			wait(1)
		end
end
local function AutoHoop()
	while _G.AutoHoop == true do
		for _, aro in pairs(workspace.Hoops:GetChildren()) do
			if not aro:FindFirstChild("beingUsed") then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, aro, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, aro, 1)
			end
		end
		wait(0.01)
	end
end

local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Farm XP",
   CurrentValue = false,
   Callback = function(Value)
       _G.AutoXP = Value
       AutoXP()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Farm Steps",
   CurrentValue = false,
   Callback = function(Value)
       _G.FarmS = Value
       FarmS()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Farm Gems",
   CurrentValue = false,
   Callback = function(Value)
       _G.FarmG = Value
       FarmG()
   end,
})
local Section = Menu:CreateSection("Others")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Hoop",
   CurrentValue = false,
   Callback = function(Value)
       _G.AutoHoop = Value
       AutoHoop()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Callback = function(Value)
       _G.AutoRebirth = Value
       AutoRebirth()
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