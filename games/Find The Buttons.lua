-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Find%20The%20Buttons.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find the Buttons! mag_rightred_circle",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Locals
local AlmostSelected = 39
local SelectedLevel = Almost Selected - 1

-- Functions
local function FireLevel()
    game:GetService("ReplicatedStorage").Packages.Knit.Services.SStage.RE.NextStageR:FireServer(SelectedLevel)
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Teleport Level")
local Input = Menu:CreateInput({
   Name = "Go to Level",
   CurrentValue = "",
   PlaceholderText = "Level from 1 to 40",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
       AlmostSelected = Text
   end,
})
local Button = Menu:CreateButton({
   Name = "TP to Selected Level",
   Callback = function()
       FireLevel()
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