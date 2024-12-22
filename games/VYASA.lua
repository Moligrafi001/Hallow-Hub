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
_G.AutoE = false
_G.AutoQ = false
game:GetService("Players").LocalPlayer.PlayerGui.SwordGUI.Frame.GiveGold:FireServer(math.huge)

-- Funções
local function Abilities()
	while _G.AutoE == true do
		game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer()
		wait(WaitForE)
	end
	while _G.AutoQ == true do
		game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer()
		wait(WaitForQ)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Ability")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Use E",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoE = Value
   	Abilities()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Use Q",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoQ = Value
   	Abilities()
   end,
})