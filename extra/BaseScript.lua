-- aqui o loadstring
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Nome do Jogo",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "Nome do Jogo"})
OrionLib:MakeNotification({
	Name = "Última atualização - ??/??/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://4483345998",
	Time = 9
})

-- Valores
_G.AlgumaCoisa = false
function AlgumaCoisa()
  while _G.AlgumaCoisa == true do
      Aqui o codigo copiado do simple spy
    wait(5)
   end
end

-- Menu
local Menu = Window:MakeTab({
	Name = "Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Menu:AddSection({
	Name = "Auto Farm"
})
Menu:AddToggle({
	Name = "Loop Print",
	Default = false,
	Callback = function(Value)
		_G.AlgumaCoisa = Value
		AlgumaCoisa()
	end
})

OrionLib:Init()