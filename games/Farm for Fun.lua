-- 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Farm for Fun! 🌾",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  ConfigFolder = "Farm for Fun! 🌾"
})
OrionLib:MakeNotification({
  Name = "Última atualização - 05/04/2024",
  Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
  Image = "rbxassetid://4483345998",
  Time = 9
})

-- Valores
_G.AutoHarvest = true
_G.AutoBuy = true

-- Funcoes
function AutoHarvest()
  while _G.AutoHarvest do
    for i = 1, 263 do
      local crop = "s" .. i
      local args = {
        [1] = {
          [1] = crop
        }
      }
      workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("harvest crop"):FireServer(unpack(args))
    end
    wait(1)
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
  Name = "Auto Harvest",
  Default = false,
  Callback = function(Value)
    _G.AutoHarvest = Value
      AutoHarvest()
    end
})

OrionLib:Init()