-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
-- Carregar a biblioteca Orion
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Criar uma janela com Orion
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | NO GAME CONNECTED",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    ConfigFolder = "Hallow Hub"
})

-- Carregar e executar o conteúdo do arquivo 'credits.lua'
loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/credits.lua"))()

-- Inicializar a biblioteca Orion
OrionLib:Init()