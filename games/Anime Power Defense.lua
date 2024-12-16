-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Anime%20Power%20Defense.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Anime Power Defense",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoHatch = false

-- Funções
local function AutoHatch()
	while _G.AutoHatch == true do
		game:GetService("ReplicatedStorage").Events.Summon:FireServer("Summon", "Default", 1)
		game:GetService("Players").LocalPlayer.PlayerGui.CaptureOverlay.CaptureOverlay.Visible = false
		wait(0.05)
	end
end

- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Summo")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Summon",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoHatch = Value
   	AutoHatch()
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