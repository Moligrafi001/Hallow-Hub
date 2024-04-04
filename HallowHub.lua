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
    Name = "The Upgrade Tree Of Tree",
    Callback = function()
        TeleportToGame(16148053600)
    end
})
Games:AddButton({
    Name = "Wing Simulator",
    Callback = function()
        TeleportToGame(4535346003)
    end
})
Games:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 3,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "The Upgrade Tree Of Tree",
	Callback = function()
		TeleportToGame(16148053600)
	end
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

OrionLib:Init()