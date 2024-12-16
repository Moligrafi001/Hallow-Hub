-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Find%20The%20Buttons.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find the Buttons! 🔎🔴",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Locals
local SelectedLevel = 39

-- Functions
local function FireLevel()
	local Stage = SelectedLevel - 1
	if Stage >= -1 and Stage <= 40 then
		game:GetService("ReplicatedStorage").Packages.Knit.Services.SStage.RE.NextStageR:FireServer(Stage)
	end
end
local function GiveSpinW()
	while _G.GiveSpinW == true do
		game:GetService("ReplicatedStorage").Packages.Knit.Services.SSpin.RE.GiveSpinR:FireServer()
		wait(0.33)
	end
end
local function SpinW()
	while _G.SpinW == true do
		game:GetService("ReplicatedStorage").Packages.Knit.Services.SSpin.RF.Spin:InvokeServer()
		wait(5.5)
	end
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
local Section = Menu:CreateSection("Spin Wheel")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Give Spin",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GiveSpinW = Value
   	GiveSpinW()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Spin Wheel",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SpinW = Value
   	SpinW()
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