-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Flee%20The%20Facility.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Flee The Facility",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "Flee The Facility"})
OrionLib:MakeNotification({
	Name = "Última atualização - 06/04/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://4483345998",
	Time = 9
})

-- Valores
_G.FB = true

-- Funcoes
function FB()
  while _G.FB do
    game:GetService("Lighting").Brightness = 2
    wait(0.1)
  end
end

-- Menu
local Menu = Window:MakeTab({
	Name = "Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Menu:AddSection({
	Name = "OP Script"
})
Menu:AddButton({
    Name = "FTFHAX",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LeviTheOtaku/roblox-scripts/main/FTFHAX.lua",true))()
  OrionLib:MakeNotification({
	Name = "FTFHAX executado!",
	Content = "Ação irreversível, evite executar mais de uma vez.",
	Image = "rbxassetid://4483345998",
	Time = 9
})
    end
})
Menu:AddButton({
    Name = "Chat Spy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/ChatSpy.lua",true))()
  OrionLib:MakeNotification({
	Name = "Chat Spy executado!",
	Content = "Ação irreversível, evite executar mais de uma vez.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
    end
})

-- Misc
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Misc:AddSection({
	Name = "Useful"
})
Misc:AddToggle({
  Name = "Fullbright",
  Default = false,
  Callback = function(Value)
    _G.FB = Value
      FB()
    end
})

OrionLib:Init()