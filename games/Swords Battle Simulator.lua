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
_G.SetWalkSpeed = false
local WalkSpeedText = 16

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
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local playerPosition = character.PrimaryPart.Position
		
		for _, block in pairs(workspace.LuckyBlocks:GetChildren()) do
			if block.Name == "LuckyBlock" then
				if block:FindFirstChild("ProximityPrompt") then
					local blockPosition = block.Position
					local distance = (playerPosition - blockPosition).Magnitude
					
					if distance <= 15 then
						fireproximityprompt(block.ProximityPrompt)
						break
					end
				end
			end
		end
		wait(0.01)
	end
end
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.1)
	end
	if _G.SetWalkSpeed == false then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 21
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
local Section = Menu:CreateSection("Movement")
local Input = Menu:CreateInput({
   Name = "Player WalkSpeed",
   CurrentValue = "",
   PlaceholderText = "Default WalkSpeed = 16",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	WalkSpeedText = Text
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Toggle WalkSpeed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SetWalkSpeed = Value
   	SetWalkSpeed()
   end,
})