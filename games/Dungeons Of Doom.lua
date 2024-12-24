-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Dungeons%20Of%20Doom.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- workspace.UTLootbag.UTLootbag
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Dungeons Of Doom",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoMobLoot = false
_G.AutoCrateLoot = false
_G.AutoChestLoot = false
local WalkSpeedText = 16
_G.SetWalkSpeed = false

-- Funções
local function MobsESP()
	while _G.MobsESP == true do
		for _, Room in pairs(workspace.DungeonRooms:GetChildren()) do
			for _, Luz in pairs(Room.Assets:GetDescendants()) do
				if Luz:IsA("Highlight") then
					Luz.Enabled = true
				end
			end
		end
		wait(1)
	end
	if _G.MobsESP == false then
		for _, Room in pairs(workspace.DungeonRooms:GetChildren()) do
			for _, Luz in pairs(Room.Assets:GetDescendants()) do
				if Luz:IsA("Highlight") then
					Luz.Enabled = false
				end
			end
		end
	end
end
local function AutoMobLoot()
	while _G.AutoMobLoot == true do
		local playerPosition = workspace.Moligrafi.HumanoidRootPart.Position
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
		wait(0.1)
	end
end
local function AutoCrateLoot()
	while _G.AutoCrateLoot == true do
		local playerPosition = workspace.Moligrafi.HumanoidRootPart.Position
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
		local playerPosition = workspace.Moligrafi.HumanoidRootPart.Position
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "T1Chest" or bag.Name == "T2Chest" or bag.Name == "T3Chest" or bag.Name == "T4Chest" then
				local blockPosition = bag.Top.Position
				local distance = (playerPosition - blockPosition).Magnitude
				for _, v in ipairs(bag:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						if distance <= 9 then
							fireproximityprompt(v)
						end
					end
				end
			end
			wait(0.1)
		end
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
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("ESP")
local Toggle =  Menu:CreateToggle({
   Name = "ESP Monsters",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MobsESP = Value
   	MobsESP()
   end,
})
local Section = Menu:CreateSection("Loot")
local Toggle =  Menu:CreateToggle({
   Name = "Collect Mob Loot",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoMobLoot = Value
   	AutoMobLoot()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Collect Crate Loot",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCrateLoot = Value
   	AutoCrateLoot()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Collect Chest Loot",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoChestLoot = Value
   	AutoChestLoot()
   end,
})

-- Movement
local MoveTab = Window:CreateTab("Movement", "chevrons-up")
local Section = MoveTab:CreateSection("WalkSpeed")
local Input = MoveTab:CreateInput({
   Name = "Player WalkSpeed",
   CurrentValue = "",
   PlaceholderText = "Default WalkSpeed = 16",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	WalkSpeedText = Text
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Toggle WalkSpeed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SetWalkSpeed = Value
   	SetWalkSpeed()
   end,
})