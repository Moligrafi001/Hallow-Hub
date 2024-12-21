-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Jump%20Incremental.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find Chicken Nuggets! 🐔",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Funções
local function SkipStage()
	local PlayerStage = game.Players.LocalPlayer.Stage.Value
	local SkipTo = PlayerStage + 1
	fireclickdetector(workspace.Clickable[SkipTo].ClickDetector)
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Stage")
local Button = Menu:CreateButton({
   Name = "Skip Stage",
   Callback = function()
       SkipStage()
    end,
})