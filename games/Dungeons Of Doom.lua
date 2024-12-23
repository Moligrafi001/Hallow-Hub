fireproximityprompt(workspace.MonsterLootbag.MonsterLootbag.ProximityPrompt)

fireproximityprompt(workspace.BossLootbag.BossLootbag.ProximityPrompt)

fireproximityprompt(workspace.CrateLootbag.CrateLootbag.ProximityPrompt)

workspace.T1Chest.Top.Baseplate.ProximityPrompt

workspace.SpikeTrap.Union.TouchInterest

_G.AutoMobLoot = true
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
AutoMobLoot()