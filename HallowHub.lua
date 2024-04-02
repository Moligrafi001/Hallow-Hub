-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Hallow Hub", SaveConfig = false, ConfigFolder = "Hallow Hub"})

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