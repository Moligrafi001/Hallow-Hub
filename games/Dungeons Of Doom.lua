-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Find%20Buttons.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
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

-- Funções
local function AutoMobLoot()
	while _G.AutoMobLoot == true do
		local playerPosition = workspace.Moligrafi.HumanoidRootPart.Position
		for _, bag in pairs(workspace:GetChildren()) do
			if bag.Name == "MonsterLootbag" then
				if bag:FindFirstChild("MonsterLootbag") then
					local blockPosition = bag.MonsterLootbag.Position
					local distance = (playerPosition - blockPosition).Magnitude
					if distance <= 9 then
						fireproximityprompt(bag.MonsterLootbag.ProximityPrompt)
						print("Apertei!")
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
				if bag:FindFirstChild("CrateLootbag") then
					local blockPosition = bag.CrateLootbag.Position
					local distance = (playerPosition - blockPosition).Magnitude
					if distance <= 9 then
						fireproximityprompt(bag.CrateLootbag.ProximityPrompt)
						print("Apertei!")
					end
				end
			end
		end
		wait(0.1)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
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