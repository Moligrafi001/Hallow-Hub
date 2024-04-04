-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Hallow Hub", SaveConfig = false, ConfigFolder = "Hallow Hub"})

-- funcoes
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

OrionLib:Init()