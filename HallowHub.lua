-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Hallow Hub", SaveConfig = false, ConfigFolder = "Hallow Hub"})

-- Função para teletransportar o jogador para um determinado Place ID
function TeleportToGame(placeId)
    local teleportService = game:GetService("TeleportService")
    local success, errorMessage = pcall(function()
        teleportService:Teleport(placeId, game.Players.LocalPlayer)
    end)
    if not success then
        warn("Erro ao teletransportar: " .. errorMessage)
    end
end

-- Variável para armazenar o jogo selecionado
local selectedGame = "The Upgrade Tree Of Tree"

-- Games
local Games = Window:MakeTab({
    Name = "Games",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Lista de Place IDs correspondentes aos jogos
local gamePlaceIds = {
    ["The Upgrade Tree Of Tree"] = 16148053600,
    ["Wing Simulator"] = 4535346003
}

Games:AddButton({
    Name = "Join Selected Game",
    Callback = function()
        local placeId = gamePlaceIds[selectedGame]
        if placeId then
            TeleportToGame(placeId)
        else
            warn("ID do Place não encontrado para o jogo selecionado.")
        end
    end
})

Games:AddDropdown({
    Name = "Select Game to Join",
    Default = selectedGame,
    Options = {"The Upgrade Tree Of Tree", "Wing Simulator"},
    Callback = function(value)
        selectedGame = value
    end    
})

OrionLib:Init()