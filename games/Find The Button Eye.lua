local player = game.Players.LocalPlayer
local playerStage = player.leaderstats.Easy.Value

-- Função para verificar e clicar no botão correspondente ao nível do jogador
local function clickMatchingButton()
    -- Percorre todos os botões no workspace
    for _, button in pairs(workspace.Game.Buttons:GetChildren()) do
        -- Verifica se o botão tem o nível igual ao do jogador
        if button:FindFirstChild("ButtonLevel") and button.ButtonLevel.Value == playerStage then
            -- Tenta clicar no botão
            local clickPart = button:FindFirstChild("ClickPart")
            if clickPart and clickPart:FindFirstChild("ClickDetector") then
                -- Simula um clique no botão
                fireclickdetector(clickPart.ClickDetector)
                print("Botão de nível " .. playerStage .. " clicado.")
                return
            end
        end
    end
    print("Nenhum botão correspondente encontrado.")
end

-- Chama a função para clicar no botão correspondente
clickMatchingButton()