fireproximityprompt(workspace.MonsterLootbag.MonsterLootbag.ProximityPrompt)

fireproximityprompt(workspace.BossLootbag.BossLootbag.ProximityPrompt)

fireproximityprompt(workspace.CrateLootbag.CrateLootbag.ProximityPrompt)

workspace.T1Chest.Top.Baseplate.ProximityPrompt

for _, touch in pairs(workspace:GetChildren("SpikeTrap")) do
	local interest = touch:GetChildren()[2]:FindFirstChild("TouchInterest")
	if interest then
		interest:Destroy()
	end
end
workspace.SpikeTrap.Union.TouchInterest