-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Dungeons%20Of%20Doom.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- workspace.UTLootbag.UTLootbag
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Dungeons of Doom",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst",
   
   ConfigurationSaving = {
   Enabled = true,
   FolderName = "🎃 Hallow Hub",
   FileName = "Dungeons of Doom"
   }
})

Rayfield:LoadConfiguration()

-- Valores
_G.AutoMobLoot = false
_G.AutoCrateLoot = false
_G.AutoChestLoot = false
local WalkSpeedText = 16
_G.SetWalkSpeed = false
_G.MobsESP = false
_G.LoopFB = false
local JumpPowerText = 50
_G.SetJumpPower = false
_G.NoClip = false
_G.PlayerESP = false
_G.InfJump = false
_G.LootESp = false

-- Funções
local function LoopFB()
	while _G.LoopFB == true do
		game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").ClockTime = 14
		game:GetService("Lighting").FogEnd = 100000
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		wait(0.01)
	end
end
local function MobsESP()
	while _G.MobsESP == true do
		for _, Room in pairs(workspace.DungeonRooms:GetChildren()) do
			for _, Luz in pairs(Room.Assets:GetDescendants()) do
				if Luz:IsA("Highlight") then
					if Luz.Enabled == false then
						Luz.Enabled = true
					end
				end
			end
		end
		wait(0.01)
	end
	if _G.MobsESP == false then
		for _, Room in pairs(workspace.DungeonRooms:GetChildren()) do
			for _, Luz in pairs(Room.Assets:GetDescendants()) do
				if Luz:IsA("Highlight") then
					if Luz.Enabled == true then
						Luz.Enabled = false
					end
				end
			end
		end
	end
end
local function AutoMobLoot()
	while _G.AutoMobLoot == true do
		local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "MonsterLootbag" then
				for _, v in pairs(bag:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						local blockPosition = bag.MonsterLootbag.Position
						local distance = (playerPosition - blockPosition).Magnitude
						if distance <= 9 then
							fireproximityprompt(v)
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "BossLootbag" then
				for _, v in pairs(bag:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						local blockPosition = bag.BossLootbag.Position
						local distance = (playerPosition - blockPosition).Magnitude
						if distance <= 9 then
							fireproximityprompt(v)
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "UTLootbag" then
				for _, v in pairs(bag:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						local blockPosition = bag.UTLootbag.Position
						local distance = (playerPosition - blockPosition).Magnitude
						if distance <= 9 then
							fireproximityprompt(v)
						end
					end
				end
			end
		end
		wait(0.1)
	end
end
local function AutoCrateLoot()
	while _G.AutoCrateLoot == true do
		local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "CrateLootbag" then
				for _, v in pairs(bag:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						local blockPosition = bag.CrateLootbag.Position
						local distance = (playerPosition - blockPosition).Magnitude
						if distance <= 9 then
							fireproximityprompt(v)
						end
					end
				end
			end
		end
		wait(0.1)
	end
end
local function AutoChestLoot()
	while _G.AutoChestLoot == true do
		local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "T1Chest" or bag.Name == "T2Chest" or bag.Name == "T3Chest" or bag.Name == "T4Chest" then
				local blockPosition = ni
				for _, obj in pairs(bag:GetDescendants()) do
					if obj.Name == "Baseplate" and #obj:GetChildren() > 1 then
						blockPosition = obj.Position
						break
					end
				end
				if blockPosition then
					local distance = (playerPosition - blockPosition).Magnitude
					for _, v in ipairs(bag:GetDescendants()) do
						if v:IsA("ProximityPrompt") then
							if distance <= 9 then
								fireproximityprompt(v)
							end
						end
					end
				end
			end
		end
		wait(0.1)
	end
end
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.1)
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
local function PlayerESP()
	while _G.PlayerESP == true do
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") then
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player:FindFirstChild("Highlight") then
						if player.Highlight.Enabled == false then
							player.Highlight.Enabled = true
						end
					else
						local highlight = Instance.new("Highlight")
						highlight.FillColor = Color3.fromRGB(255, 125, 0)
						highlight.OutlineColor = Color3.fromRGB(255, 125, 0)
						highlight.FillTransparency = 0.6
						highlight.Adornee = player
						highlight.Parent = player
					end
				end
			end
		end
		wait(0.01)
	end
	if _G.PlayerESP == false then
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") then
				if player:FindFirstChild("Highlight") then
					if player.Highlight.Enabled == true then
						player.Highlight.Enabled = false
					end
				end
			end
		end
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
local function LootESp()
	while _G.LootESp == true do
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "MonsterLootbag" then
				if bag:FindFirstChild("MonsterLootbag") then
					if bag.MonsterLootbag:FindFirstChild("ProximityPrompt") and not bag:FindFirstChild("Highlight") then
						local highlight = Instance.new("Highlight")
						highlight.FillColor = Color3.fromRGB(0, 255, 0)
						highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
						highlight.FillTransparency = 0
						highlight.Adornee = bag
						highlight.Parent = bag
					elseif bag:FindFirstChild("Highlight") and not bag.MonsterLootbag:FindFirstChild("ProximityPrompt") then
						bag.Highlight.Enabled = false
					end
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == false then
							bag.Highlight.Enabled = true
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "BossLootbag" then
				if bag:FindFirstChild("BossLootbag") then
					if bag.BossLootbag:FindFirstChild("ProximityPrompt") and not bag:FindFirstChild("Highlight") then
						local highlight = Instance.new("Highlight")
						highlight.FillColor = Color3.fromRGB(0, 255, 0)
						highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
						highlight.FillTransparency = 0
						highlight.Adornee = bag
						highlight.Parent = bag
					elseif bag:FindFirstChild("Highlight") and not bag.BossLootbag:FindFirstChild("ProximityPrompt") then
						bag.Highlight.Enabled = false
					end
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == false then
							bag.Highlight.Enabled = true
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "UTLootbag" then
				if bag:FindFirstChild("UTLootbag") then
					if bag.UTLootbag:FindFirstChild("ProximityPrompt") and not bag:FindFirstChild("Highlight") then
						local highlight = Instance.new("Highlight")
						highlight.FillColor = Color3.fromRGB(0, 255, 0)
						highlight.OutlineColor = Color3.fromRGB(0, 255, 0)
						highlight.FillTransparency = 0
						highlight.Adornee = bag
						highlight.Parent = bag
					elseif bag:FindFirstChild("Highlight") and not bag.UTLootbag:FindFirstChild("ProximityPrompt") then
						bag.Highlight.Enabled = false
					end
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == false then
							bag.Highlight.Enabled = true
						end
					end
				end
			end
		end
		wait(0.01)
	end
	if _G.LootESp == false then
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "MonsterLootbag" then
				if bag:FindFirstChild("MonsterLootbag") then
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == true then
						bag.Highlight.Enabled = false
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "BossLootbag" then
				if bag:FindFirstChild("BossLootbag") then
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == true then
						bag.Highlight.Enabled = false
						end
					end
				end
			end
		end
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "UTLootbag" then
				if bag:FindFirstChild("UTLootbag") then
					if bag:FindFirstChild("Highlight") then
						if bag.Highlight.Enabled == true then
						bag.Highlight.Enabled = false
						end
					end
				end
			end
		end
	end
end
local function ChestESp()
	while _G.ChestESp == true do
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "T1Chest" or bag.Name == "T2Chest" or bag.Name == "T3Chest" or bag.Name == "T4Chest" then
				if bag:FindFirstChild("Highlight") then
					if bag.Highlight.Enabled == false then
						bag.Highlight.Enabled = true
					end
				else
					local highlight = Instance.new("Highlight")
					highlight.FillColor = Color3.fromRGB(94, 73, 44)
					highlight.OutlineColor = Color3.fromRGB(94, 73, 44)
					highlight.FillTransparency = 0
					highlight.Adornee = bag
					highlight.Parent = bag
				end
			end
		end
		wait(0.01)
	end
	if _G.ChestESp == false then
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "T1Chest" or bag.Name == "T2Chest" or bag.Name == "T3Chest" or bag.Name == "T4Chest" then
				if bag:FindFirstChild("Highlight") then
					if bag.Highlight.Enabled == true then
						bag.Highlight.Enabled = false
					end
				end
			end
		end
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Loot")
local Toggle =  Menu:CreateToggle({
   Name = "Collect Mob Loot",
   CurrentValue = false,
   Flag = "LootToggle",
   Callback = function(Value)
   	_G.AutoMobLoot = Value
   	AutoMobLoot()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Collect Crate Loot",
   CurrentValue = false,
   Flag = "CrateToggle",
   Callback = function(Value)
   	_G.AutoCrateLoot = Value
   	AutoCrateLoot()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Collect Chest Loot",
   CurrentValue = false,
   Flag = "ChestToggle",
   Callback = function(Value)
   	_G.AutoChestLoot = Value
   	AutoChestLoot()
   end,
})

-- Visual
local VisualTab = Window:CreateTab("Visual", "eye")
local Section = VisualTab:CreateSection("ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "ESP Players",
   CurrentValue = false,
   Flag = "PlayersToggle",
   Callback = function(Value)
   	_G.PlayerESP = Value
   	PlayerESP()
   end,
})
local Toggle =  VisualTab:CreateToggle({
   Name = "ESP Loot",
   CurrentValue = false,
   Flag = "LootToggle",
   Callback = function(Value)
   	_G.LootESp = Value
   	LootESp()
   end,
})
local Toggle =  VisualTab:CreateToggle({
   Name = "ESP Chests",
   CurrentValue = false,
   Flag = "ChestsToggle",
   Callback = function(Value)
   	_G.ChestESp = Value
   	ChestESp()
   end,
})
local Toggle =  VisualTab:CreateToggle({
   Name = "ESP Monsters",
   CurrentValue = false,
   Flag = "MobsToggle",
   Callback = function(Value)
   	_G.MobsESP = Value
   	MobsESP()
   end,
})
local Section = VisualTab:CreateSection("More")
local Toggle =  VisualTab:CreateToggle({
   Name = "Fullbright",
   CurrentValue = false,
   Flag = "FullbrightToggle",
   Callback = function(Value)
   	_G.LoopFB = Value
   	LoopFB()
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
local Section = MoveTab:CreateSection("More")
local Toggle = MoveTab:CreateToggle({
   Name = "No Clip",
   CurrentValue = false,
   Flag = "NoClipToggle",
   Callback = function(Value)
   	_G.NoClip = Value
   	NoClip()
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