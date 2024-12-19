-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Everything%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Everything Upgrade Tree",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoUpgrade = false
_G.AutoConvert = false
_G.AutoUpLab = false
_G.AutoPrestige = false
_G.AutoUpPrestige = false

-- Funções
local function AutoUpPrestige()
	while _G.AutoUpPrestige == true do
		for i = 2, 30 do
			local numero = i .. "p"
			game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(numero)
		end
	wait(1)
	end
end
local function AutoPrestige()
	while _G.AutoPrestige do
		game:GetService("ReplicatedStorage").remotes.upgrade:FireServer("prestige", true)
		wait(1)
	end
end
local function AutoUpgrade()
	while _G.AutoUpgrade == true do
		for i = 1, 30 do
			if i ~= 20 then
				game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(i)
			end
		end
		for v = 1, 30 do
			local numero = v .. "b"
			game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(numero)
		end
		wait(0.5)
	end
end
local function AutoConvert()
	while _G.AutoConvert == true do
		game:GetService("ReplicatedStorage").remotes.research_convert:FireServer(true)
		wait(1)
	end
end
local function AutoUpLab()
	while _G.AutoUpLab == true do
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("RightSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("LeftSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize2")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain2")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain3")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain4")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain1b")
		wait(0.33)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoUpgrade = Value
   	AutoUpgrade()
   end,
})
local Section = Menu:CreateSection("Research Center")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Convert",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoConvert = Value
   	AutoConvert()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Research",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoUpLab = Value
   	AutoUpLab()
   end,
})

-- Prestige
local Prestige = Window:CreateTab("Prestige", "shield")
local Section = Prestige:CreateSection("Auto Farm")
local Toggle =  Prestige:CreateToggle({
   Name = "Auto Prestige",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoPrestige = Value
   	AutoPrestige()
   end,
})
local Section = Prestige:CreateSection("Upgrade")
local Toggle =  Prestige:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoUpPrestige = Value
   	AutoUpPrestige()
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