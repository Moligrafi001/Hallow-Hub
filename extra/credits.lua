-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/credits.lua",true))()

-- Credits
local Games = Window:MakeTab({
	Name = "Another Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Games:AddSection({
	Name = "All the available games for script"
})
Games:AddButton({
	Name = "The Upgrade Tree Of Tree",
	Callback = function()
      		print("button pressed")
  	end    
})
Games:AddButton({
	Name = "Wing Simulator",
	Callback = function()
      		print("button pressed")
  	end    
})
Games:AddLabel("Click to join!")
Menu:AddLabel("Instagram: _moligrafi_")