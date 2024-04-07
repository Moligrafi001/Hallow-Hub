-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/2%20Player%20Pizza%20Factory%20Tycoon.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | 2 Player Pizza Factory Tycoon",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "2 Player Pizza Factory Tycoon"})
OrionLib:MakeNotification({
	Name = "Última atualização - 07/04/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://4483345998",
	Time = 9
})

-- Valores
_G.AutoCash = false
_G.AutoBox = false

-- Funcoes
function AutoCash()
  while _G.AutoCash == true do
      OrionLib:MakeNotification({
	Name = "Teste",
	Content = "minha bossetinha",
	Image = "rbxassetid://4483345998",
	Time = 1
})
    wait(5)
  end
end

function AutoBox()
  while _G.AutoBox == true do
    -- funcão que coleta as caixas
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
	Name = "Auto Collect Cash",
	Default = false,
	Callback = function(Value)
		_G.AutoCash = Value
		AutoCash()
	end
})
Menu:AddToggle({
	Name = "Auto Collect Box",
	Default = false,
	Callback = function(Value)
		_G.AutoBox = Value
		AutoBox()
	end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()