-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Hallow Hub", SaveConfig = false, ConfigFolder = "Hallow Hub"})

-- Funcoes
function TeleportToGame(placeId)
    local teleportService = game:GetService("TeleportService")
    local success, errorMessage = pcall(function()
    end)
        teleportService:Teleport(placeId)
end

-- Games
local Games = Window:MakeTab({
    Name = "Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Games:AddButton({
    Name = "Join Selected Game",
    Callback = function()
      
    end
})
Games:AddDropdown({
	Name = "Select Game to Join",
	Default = "The Upgrade Tree Of Tree",
	Options = {"The Upgrade Tree Of Tree", "Wing Simulator"},
	Callback = function()
		
	end    
})

--[[
Name = <string> - The name of the dropdown.
Default = <string> - The default value of the dropdown.
Options = <table> - The options in the dropdown.
Callback = <function> - The function of the dropdown.
]]

OrionLib:Init()