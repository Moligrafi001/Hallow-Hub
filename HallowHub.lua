-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))() -- Removido, pois iremos incluir dinamicamente abaixo
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | NO GAME CONNECTED", 
  HidePremium = false, 
  IntroText = "Hallow Hub", 
  SaveConfig = false, 
  ConfigFolder = "Hallow Hub"})

-- Insira o código 'extra/credits.lua' aqui:
local creditsCode = game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/credits.lua")

-- Crie um novo ambiente para executar o código, isolando-o e permitindo que você capture o retorno:
local executeCreditsCode = function()
    local f, err = loadstring(creditsCode)
    if f then
        return f() -- Executa o código e retorna qualquer valor
    else
        warn("Erro ao carregar 'credits.lua':", err)
    end
end

local creditsModuleResult = executeCreditsCode() -- Receba o possível retorno de credits.lua

-- Aqui você pode usar qualquer função, variável, etc.. definidas dentro do creditsModuleResult, se houver

OrionLib:Init()
