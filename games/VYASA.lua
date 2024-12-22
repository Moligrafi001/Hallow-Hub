-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/VYASA.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Vyasa",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
local WaitForE = "Slow (5/s)"
local WaitForQ = "Slow (5/s)"
_G.AutoE = false
_G.AutoQ = false

-- Funções
local function Abilities()
	while _G.AutoE == true do
		game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer()
		if WaitForE == "Slow (5/s)" then
			wait(0.2)
		elseif WaitForE == "Normal (10/s)" then
			wait(0.1)
		elseif WaitForE == "Fast (20/s)" then
			wait(0.05)
		end
	end
	while _G.AutoQ == true do
		game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer()
		if WaitForQ == "Slow (5/s)" then
			wait(0.2)
		elseif WaitForQ == "Normal (10/s)" then
			wait(0.1)
		elseif WaitForQ == "Fast (20/s)" then
			wait(0.05)
		end
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
local Dropdown = Menu:CreateDropdown({
   Name = "Auto Use E Cooldown",
   Options = {"Slow (5/s)", "Normal (10/s)", "Fast (20/s)"},
   CurrentOption = {"Slow 5/s"},
   MultipleOptions = false,
   Callback = function(Options)
   		WaitForE = Options[1]
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
local Dropdown = Menu:CreateDropdown({
   Name = "Auto Use Q Cooldown",
   Options = {"Slow (5/s)", "Normal (10/s)", "Fast (20/s)"},
   CurrentOption = {"Slow 5/s"},
   MultipleOptions = false,
   Callback = function(Options)
   		WaitForQ = Options[1]
   end,
})
local Section = Menu:CreateSection("Extra")
local Button = Menu:CreateButton({
   Name = "Get Spells",
   Callback = function()
       for _, itemName in ipairs({"Arcane Blast", "Barrage", "Cacti Boulder", "Enrage", "Fireball", "Ground Smash", "Heal", "Healing Blast", "Mushroom", "Rain", "Slime Splash", "Soul Absorb", "Stab", "Stomp", "Summon", "Sword Lunge", "The Twins Blast", "Tree Chop", "Whirlwind"}) do
     	game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(game:GetService("ReplicatedStorage").GameItems:FindFirstChild(itemName), 0)
				end
    end,
})
local Button = Menu:CreateButton({
   Name = "Inf Money",
   Callback = function()
       game:GetService("Players").LocalPlayer.PlayerGui.SwordGUI.Frame.GiveGold:FireServer(99999999999999999999999999999999999)
    end,
})
local Label = Menu:CreateLabel("Open Sell Gui to Work", "triangle-alert")