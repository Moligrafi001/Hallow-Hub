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
_G.AlgumaCoisa 

-- Funcoes
function AutoClick()
  while _G.AutoClick == true do
      print("Hello World!")
    wait(0.0001)
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
Menu:AddButton({
	Name = "Nao sei",
	Callback = function()
      print("Goodbye World!")
  	end
})
local Section = Trees:AddSection({
	Name = "Auto Purchase"
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()