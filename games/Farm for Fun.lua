-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Farm%20for%20Fun.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Farm for Fun! 🌾",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false, 
  IntroIcon = "rbxassetid://17091459839",
  ConfigFolder = "Farm for Fun! 🌾"
})
OrionLib:MakeNotification({
  Name = "Última atualização - 05/04/2024",
  Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
  Image = "rbxassetid://17091459839",
  Time = 9
})

-- Valores
_G.AutoHarvest = true
_G.SpeedB = true
_G.GoldB = true
_G.GrowB = true
_G.MoneyB = true
_G.AutoRB = true

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

function GrowB()
    while _G.GrowB do
        local boosts = {}
        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Name == "Grow Boost" then
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

function MoneyB()
    while _G.MoneyB do
        local boosts = {}
        for _, part in ipairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part.Name == "Money Boost" then
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

function AutoRB()
  while _G.AutoRB do
    local args = {
    [1] = {}
}

workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("buy rebirth"):InvokeServer(unpack(args))
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
  Name = "Auto Harvest",
  Default = false,
  Callback = function(Value)
    _G.AutoHarvest = Value
      AutoHarvest()
    end
})
Menu:AddToggle({
  Name = "Auto Rebirth",
  Default = false,
  Callback = function(Value)
    _G.AutoRB = Value
      AutoRB()
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
Boosts:AddToggle({
  Name = "Grow Boost",
  Default = false,
  Callback = function(Value)
    _G.GrowB = Value
      GrowB()
    end
})
Boosts:AddToggle({
  Name = "Money Boost",
  Default = false,
  Callback = function(Value)
    _G.MoneyB = Value
      MoneyB()
    end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()