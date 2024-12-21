-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Find%20Chicken%20Nuggets.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find Chicken Nuggets! 🐔",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSkip = false

-- Funções
local function SkipStage()
	local PlayerStage = game.Players.LocalPlayer.Stage.Value
	local SkipTo = PlayerStage + 1
	fireclickdetector(workspace.Clickable[SkipTo].ClickDetector)
end
local function AutoSkip()
	while _G.AutoSkip == true do
		SkipStage()
		wait(2)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Stage")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Skip Stage",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoSkip = Value
   	AutoSkip()
   end,
})
local Button = Menu:CreateButton({
   Name = "Skip Stage",
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