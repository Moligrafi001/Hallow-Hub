-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Everything%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Everything Upgrade Tree",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Marc",
   Theme = "Amethyst"
})

-- Valores
_G.AutoUpgrade = false
_G.AutoConvert = false
_G.AutoUpgrade = false

-- Funções
local function AutoUpgrade()
	while _G.AutoUpgrade == true do
		for i = 1, 30 do
			if i ~= 22 then
				game:GetService("ReplicatedStorage").remotes.upgrade:FireServer(i)
			end
		end
		wait(1)
	end
end
local function AutoConvert()
	while _G.AutoConvert == true do
		game:GetService("ReplicatedStorage").remotes.research_convert:FireServer()
		wait(1)
	end
end
local function AutoUpLab()
	while _G.AutoUpLab == true do
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("RightSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("LeftSide")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("Materialize")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain2")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain3")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain4")
		game:GetService("ReplicatedStorage").remotes.research_upgrade:FireServer("PointGain2")
		wait(1)
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