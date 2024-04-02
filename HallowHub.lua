-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Script By Moligrafi", IntroIcon = "https://cdn.discordapp.com/attachments/1208977324750536745/1224587306413981797/pumpkin_8745242.png?ex=661e08cd&is=660b93cd&hm=311a038333550879e433a2a976d7f5575ef0f097fa8a225a6ad17bc498bd74bc&", SaveConfig = false, ConfigFolder = "Hallow Hub"})

-- Games
local Games = Window:MakeTab({
	Name = "Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Games:AddButton({
	Name = "The Upgrade Tree Of Tree",
	Callback = function()
      		print("button pressed")
  	end    
})

OrionLib:Init()