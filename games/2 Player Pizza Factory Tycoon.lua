local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | 2 Player Pizza Factory Tycoon",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "2 Player Pizza Factory Tycoon"})
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
    print("Hello World!")
  while _G.AutoClick == true do
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

OrionLib:Init()