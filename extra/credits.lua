-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/credits.lua",true))()
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
    ["Wing Simulator"] = 4535346003
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
    Options = {"The Upgrade Tree Of Tree", "Wing Simulator"},
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