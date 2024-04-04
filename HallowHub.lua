-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | NO GAME CONNECTED", HidePremium = false, IntroText = "Hallow Hub", SaveConfig = false, ConfigFolder = "Hallow Hub"})

-- Função para teletransportar o jogador para um determinado Place ID
function TeleportToGame(placeId)
    local teleportService = game:GetService("TeleportService")
    local success, errorMessage = pcall(function()
        teleportService:Teleport(placeId)
    end)
    if not success then
        warn("Erro ao teletransportar: " .. errorMessage)
    end
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
        print("Botão The Upgrade Tree Of Tree pressionado")
        TeleportToGame(16148053600) -- ID do Place de The Upgrade Tree Of Tree
    end
})

Games:AddButton({
    Name = "Wing Simulator",
    Callback = function()
        print("Botão Wing Simulator pressionado")
        TeleportToGame(4535346003) -- ID do Place do Wing Simulator
    end
})

OrionLib:Init()