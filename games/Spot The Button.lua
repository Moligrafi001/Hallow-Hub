local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Spot The Button! 🔴",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

local function SkipStage()
	local PlayerStage = game.Players.LocalPlayer.leaderstats.Stage.Value
	local SkipTo = PlayerStage + 1
			print(PlayerStage)
		game:GetService("ReplicatedStorage").GiveStage:FireServer(game:GetService("Players").LocalPlayer, workspace.GameButtons:FindFirstChild(SkipTo))
			print(SkipTo)
end

while true do
SkipStage()
wait(0.01)
end

