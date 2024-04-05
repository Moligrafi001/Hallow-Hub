-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Farm%20for%20Fun.lua",true))()
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
_G.SpeedB = true
_G.GoldB = true

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

function SpeedB()
    while _G.SpeedB do
        local boosts = {}
        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Name == "Speed Boost" then
                table.insert(boosts, part)
            end
        end
        
        for _, boost in ipairs(boosts) do
            local args = {
                [1] = {
                    [1] = boost
                }
            }
            workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("use boost"):InvokeServer(unpack(args))
        end
        wait(1)
    end
end

function GoldB()
    while _G.GoldB do
        local boosts = {}
        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Name == "Gold Boost" then
                table.insert(boosts, part)
            end
        end
        
        for _, boost in ipairs(boosts) do
            local args = {
                [1] = {
                    [1] = boost
                }
            }
            workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("use boost"):InvokeServer(unpack(args))
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

-- Boosts
local Boosts = Window:MakeTab({
  Name = "Boosts",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})
local Section = Boosts:AddSection({
  Name = "Auto Boosts"
})
Boosts:AddToggle({
  Name = "Speed Boost",
  Default = false,
  Callback = function(Value)
    _G.SpeedB = Value
      SpeedB()
    end
})
Boosts:AddToggle({
  Name = "Gold Boost",
  Default = false,
  Callback = function(Value)
    _G.GoldB = Value
      GoldB()
    end
})

OrionLib:Init()