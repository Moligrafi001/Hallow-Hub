-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Legends%20Of%20Speed.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Legends Of Speed",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Movement
local WalkSpeedText = 16
local JumpPowerText = 50
_G.SetWalkSpeed = false
_G.SetJumpPower = false
_G.InfJump = false
_G.NoClip = false
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.01)
	end
	if _G.SetWalkSpeed == false then
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
	end
end
local function SetJumpPower()
	while _G.SetJumpPower == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower ~= JumpPowerText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = JumpPowerText
		end
		wait(0.01)
		end
	if _G.SetJumpPower == false then
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
	end
end
local function InfJump()
	while _G.InfJump == true do
		game:GetService("UserInputService").JumpRequest:connect(function()
			if _G.InfJump == true then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
			end
		end)
		wait(0.1)
	end
end
local function NoClip()
	while _G.NoClip == true do
		for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if part:IsA("BasePart") then
				if _G.NoClip then
					part.CanCollide = false
				else
					part.CanCollide = true
				end
			end
		end
		wait(0.1)
	end
end

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
				firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), aro, 0)
				firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), aro, 1)
			end
		end
		wait(0.01)
	end
end
local function UnlockTPs()
	for _, part in pairs(workspace.areaCircles:GetChildren()) do
		if part.Name == "areaCircle" then
			part.requiredAmount.Value = 0
		end
	end
end

-- Menu
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

-- Animal
local AnimalTab = Window:CreateTab("Pets", "paw-print")
local Section = AnimalTab:CreateSection("Coming soon... :D")

-- Teleport
local TPsTab = Window:CreateTab("Teleport", "Shell")
local Section = TPsTab:CreateSection("Auto Farm")
local Button = TPsTab:CreateButton({
   Name = "Unlock All Portals",
   Callback = function()
       UnlockTPs()
    end,
})

-- Movement
local MoveTab = Window:CreateTab("Movement", "chevrons-up")
local Section = MoveTab:CreateSection("Walk")
local Input = MoveTab:CreateInput({
   Name = "Player Walk Speed",
   CurrentValue = "",
   Flag = "WalkSpeedInput",
   PlaceholderText = "Default Walk Speed = 16",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	WalkSpeedText = Text
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Toggle Walk Speed",
   CurrentValue = false,
   Flag = "WalkSpeedToggle", 
   Callback = function(Value)
   	_G.SetWalkSpeed = Value
   	SetWalkSpeed()
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "No Clip",
   CurrentValue = false,
   Flag = "NoClipToggle",
   Callback = function(Value)
   	_G.NoClip = Value
   	NoClip()
   end,
})
local Section = MoveTab:CreateSection("Jump")
local Input = MoveTab:CreateInput({
   Name = "Player Jump Power",
   CurrentValue = "",
   Flag = "JumpPowerInput",
   PlaceholderText = "Default Jump Power = 50",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	JumpPowerText = Text
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Toggle Jump Power",
   CurrentValue = false,
   Flag = "JumpPowerToggle",
   Callback = function(Value)
   	_G.SetJumpPower = Value
   	SetJumpPower()
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Inf Jump",
   CurrentValue = false,
   Flag = "InfJumpToggle",
   Callback = function(Value)
   	_G.InfJump = Value
   	InfJump()
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