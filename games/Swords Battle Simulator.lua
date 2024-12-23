-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Swords%20Battle%20Simulator.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Swords Battle Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoOrbs = false
_G.AutoLuB = false

-- Funções
local function AutoOrbs()
	while _G.AutoOrbs == true do
		for _, orb in pairs(workspace.Experience:GetChildren()) do
			if orb.Name == "EpicExperienceOrb" then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, orb, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, orb, 1)
			break
			elseif orb.Name == "ExperienceOrb" then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, orb, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, orb, 1)
			break
			end
		end
		wait(0.01)
	end
end
local function AutoLuB()
	while _G.AutoLuB == true do
		for _, block in pairs(workspace.LuckyBlocks:GetChildren()) do
			if block.Name == "LuckyBlock" then
				if block:FindFirstChild("ProximityPrompt") then
					fireproximityprompt(block.ProximityPrompt)
				break
				end
			end
		end
		wait(0.01)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Orbs",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoOrbs = Value
   	AutoOrbs()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Lucky Blocks",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoLuB = Value
   	AutoLuB()
   end,
})