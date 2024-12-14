-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Punch%20Monsters.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | 🥊Punch Monsters!🥊",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoTrain = false
_G.AutoWin = false
_G.AutoRebirth = false
_G.TimeRewards = false

-- Funções
local function AutoTrain()
	while _G.AutoTrain == true do
		game:GetService("ReplicatedStorage").Train:FireServer("0A", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0B", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0C", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0D", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0E", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0F", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0G", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0H", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0I", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0J", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0K", 1)
		game:GetService("ReplicatedStorage").Train:FireServer("0L", 1)
		wait(0.0001)
	end
end
local function TimeRewards()
	while _G.TimeRewards == true do
		for t = 1, 12 do
			game:GetService("ReplicatedStorage").Gift:FireServer(t)
		end
		wait(1)
	end
end
local function AutoRebirth()
	while _G.AutoRebirth == true do
		game:GetService("ReplicatedStorage").Rebirth:FireServer()
		wait(1)
	end
end
local function AutoWin()
	while _G.AutoWin == true do
		for w = 1, 11 do
		game:GetService("ReplicatedStorage").Win:FireServer(w)
		end
		wait(0.0001)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Train",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoTrain = Value
   	AutoTrain()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Win",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoWin = Value
   	AutoWin()
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
local Toggle =  Menu:CreateToggle({
   Name = "Auto Claim Time Rewards",
   CurrentValue = false,
   Callback = function(Value)
   	_G.TimeRewards = Value
   	TimeRewards()
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