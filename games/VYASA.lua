-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Clicking%20Quest.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Vyasa",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer()
game:GetService("Players").LocalPlayer.PlayerGui.SwordGUI.Frame.GiveGold:FireServer(math.huge)

-- Funções
k

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Click",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoClick = Value
   	AutoClick()
   end,
})