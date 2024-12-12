-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Farm%20for%20Fun.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Farm for Fun! 🌾",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoHarvest = false
_G.SpeedB = false
_G.GoldB = false
_G.GrowB = false
_G.MoneyB = false
_G.AutoRB = false

-- Funcoes
local function AutoHarvest()
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
local function SpeedB()
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
local function GoldB()
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
local function GrowB()
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
local function MoneyB()
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
local function AutoRB()
  while _G.AutoRB do
    local args = {
    [1] = {}
}

workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("buy rebirth"):InvokeServer(unpack(args))
wait(5)
  end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Harvest",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoHarvest = Value
   	AutoHarvest()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto rebirth",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoRB = Value
   	AutoRB()
   end,
})
local Section = Menu:CreateSection("Boosts")
local Toggle =  Menu:CreateToggle({
   Name = "Speed Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SpeedB = Value
   	AutoRB()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Gold Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GoldB = Value
   	GoldB()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Grow Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GrowB = Value
   	GrowB()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Money Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MoneyB = Value
   	MoneyB()
   end,
})

-- Credits
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Label = Credits:CreateLabel("You can contact me to suggest something or even to ask for a game script")