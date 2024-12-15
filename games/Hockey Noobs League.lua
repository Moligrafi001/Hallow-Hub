-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Hockey%20Noobs%20League.lua",true))()
if game.Players.LocalPlayer.Name == "MurdersRBLX" then

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Hockey Noobs: League",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.SuperShoot = false
_G.SuperBlocker = false

-- Funções
local function SuperShoot()
	if _G.SuperShoot == true then
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer(game:GetService("Players").LocalPlayer.Character.stick.Puck)
	end
end
local function SuperBlocker()
	if _G.SuperBlocker == true then
	-- make the player hitbox bigger
	print("on")
	else
	-- delete the player hitbox
	print("off")
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Blocker")
local Toggle =  Menu:CreateToggle({
   Name = "Wait im trying some diff ways to make it bigger",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SuperBlocker = Value
   end,
})
local Section = Menu:CreateSection("Extra")
local Toggle =  Menu:CreateToggle({
   Name = "Super Shoot",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SuperShoot = Value
   end,
})
local Keybind = Menu:CreateKeybind({
   Name = "Keybind to Super Shoot",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Callback = function(Keybind)
   	SuperShoot()
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

else
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()

end