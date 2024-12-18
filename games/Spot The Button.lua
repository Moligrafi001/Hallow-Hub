-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Spot%20The%20Button.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Spot The Button! 🔴",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.LoopSkip = false

-- Funções
local function LoopSkip()
	while _G.LoopSkip == true do
		SkipStage()
		wait(0.01)
	end
end
local function SkipStage()
	local PlayerStage = game.Players.LocalPlayer.leaderstats.Stage.Value
	local SkipTo = PlayerStage + 1
			print(PlayerStage)
		game:GetService("ReplicatedStorage").GiveStage:FireServer(game:GetService("Players").LocalPlayer, workspace.GameButtons:FindFirstChild(SkipTo))
			print(SkipTo)
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Stage")
local Toggle =  Menu:CreateToggle({
   Name = "Loop Skip Stage",
   CurrentValue = false,
   Callback = function(Value)
   	_G.LoopSkip = Value
   	LoopSkip()
   end,
})
local Button = Menu:CreateButton({
   Name = "Start Challenge",
   Callback = function()
   	SkipStage()
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