-- aqui o loadstring
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))() -- Define a biblioteca da interface
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Nome do Jogo",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "Nome do Jogo"}) -- Cria a janela
OrionLib:MakeNotification({
	Name = "Última atualização - ??/??/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://4483345998",
	Time = 9
}) -- Notificação

-- Auto Farm
_G.AutoFarm = false -- Define a variável como inativa
function AutoFarm() -- Cria uma função
  while _G.AlgumaCoisa == true do -- Enquanto a variável estiver ativa fará o seguinte loop
      -- Cole o código remoto que coleto do Simple Spy nessa linha
    wait(0.0001) -- Repete 1.000 vezes por segundo
  end -- Sinaliza o fim do loop
end -- Sinaliza o fim da função

-- Menu
local Menu = Window:MakeTab({
	Name = "Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) -- Cria uma guia
local Section = Menu:AddSection({
	Name = "Auto Farm"
}) -- Cria uma sessão
Menu:AddToggle({
	Name = "Loop Print", -- Nome do botão
	Default = false, -- Executa com a opção desativada
	Callback = function(Value)
		_G.AlgumaCoisa = Value -- Inverte a variável
		AlgumaCoisa() -- Chama a função após mudar inverter a variável
	end -- Sinaliza o fim do function
}) -- Cria um botão

OrionLib:Init() -- Obrigatório para finalizar o código