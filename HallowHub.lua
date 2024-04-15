-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | NO GAME CONNECTED", 
  HidePremium = false, 
  IntroText = "Hallow Hub", 
  SaveConfig = false, 
  ConfigFolder = "Hallow Hub"})

-- Teleport
local selectedGame = "The Upgrade Tree Of Tree"
function TeleportToGame(placeId)
    local teleportService = game:GetService("TeleportService")
    local success, errorMessage = pcall(function()
        teleportService:Teleport(placeId, game.Players.LocalPlayer)
    end)
end

-- Lista de Place IDs correspondentes aos jogos
local gamePlaceIds = {
    ["The Upgrade Tree Of Tree"] = 16148053600,
    ["Wing Simulator"] = 4535346003,
    ["Farm for Fun! 🌾"] = 6598746935,
    ["Flee The Facility"] = 893973440,
    ["Build a bunker in your house to survive zombies"] = 12684368460,
    ["Planet Clicker 🌎"] = 6428116890,
    ["Legends Of Speed ⚡" = 101667897
}

-- Credits
local Credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Credits:AddDropdown({
    Name = "Select Game to Join",
    Default = selectedGame,
    Options = {"The Upgrade Tree Of Tree", "Wing Simulator", "Farm for Fun! 🌾", "Flee The Facility", "Build a bunker in your house to survive zombies", "Planet Clicker 🌎", "Legends Of Speed ⚡"},
    Callback = function(value)
        selectedGame = value
    end    
})
Credits:AddButton({
    Name = "Join Selected Game",
    Callback = function()
        local placeId = gamePlaceIds[selectedGame]
        if placeId then
            TeleportToGame(placeId)
        end
    end
})

OrionLib:Init()