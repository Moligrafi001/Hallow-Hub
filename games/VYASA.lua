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
_G.InfDamage = false

-- Funções
local function AutoE()
	while _G.AutoE == true do
		if game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Soul Absorb") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(1)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Healing Blast") then
			game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer()
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Fireball") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(math.huge, Vector3.new(0, 0, 0), 0.5, 3, 0.1, nil)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(2, Vector3.new(0, 0, 0), 0.5, 3, 0.1, nil)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Slime Splash") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(1)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Arcane Blast") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(2)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Whirlwind") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer(0.6)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Ground Smash") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Ground Smash").RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Ground Smash").RemoteEvent:FireServer(2)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("The Twins Blast") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("The Twins Blast").RemoteEvent:FireServer(math.huge, Vector3.new(0, 0, 0))
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("The Twins Blast").RemoteEvent:FireServer(4.5, Vector3.new(0, 0, 0))
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Barrage") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E.Barrage.RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E.Barrage.RemoteEvent:FireServer(0.16666666666666666)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Stomp") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E.Stomp.RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E.Stomp.RemoteEvent:FireServer(3)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Cacti Boulder") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Cacti Boulder").RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:FindFirstChild("Cacti Boulder").RemoteEvent:FireServer(4.5)
			end
		else
			game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.E:GetChildren()[4].RemoteEvent:FireServer()
		end
		if WaitForE == "Slow (5/s)" then
			wait(0.2)
		elseif WaitForE == "Normal (10/s)" then
			wait(0.1)
		elseif WaitForE == "Fast (20/s)" then
			wait(0.05)
		end
	end
end
local function AutoQ()
	while _G.AutoQ == true do
		if game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Soul Absorb") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(1)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Healing Blast") then
			game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer()
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Fireball") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(math.huge, Vector3.new(0, 0, 0), 0.5, 3, 0.1, nil)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(2, Vector3.new(0, 0, 0), 0.5, 3, 0.1, nil)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Slime Splash") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(1)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Arcane Blast") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(2)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Whirlwind") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer(0.6)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Ground Smash") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Ground Smash").RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Ground Smash").RemoteEvent:FireServer(2)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("The Twins Blast") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("The Twins Blast").RemoteEvent:FireServer(math.huge, Vector3.new(0, 0, 0))
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("The Twins Blast").RemoteEvent:FireServer(4.5, Vector3.new(0, 0, 0))
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Barrage") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q.Barrage.RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q.Barrage.RemoteEvent:FireServer(0.16666666666666666)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Stomp") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q.Stomp.RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q.Stomp.RemoteEvent:FireServer(3)
			end
		elseif game.Players.LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Cacti Boulder") then
			if _G.InfDamage == true then
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Cacti Boulder").RemoteEvent:FireServer(math.huge)
			else
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:FindFirstChild("Cacti Boulder").RemoteEvent:FireServer(4.5)
			end
		else
			game:GetService("Players").LocalPlayer.PlayerGui.PlayerMain.Abilities.Q:GetChildren()[4].RemoteEvent:FireServer()
		end
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
   	AutoE()
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
   	AutoQ()
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
local Toggle =  Menu:CreateToggle({
   Name = "Inf Damage to Auto Ability",
   CurrentValue = false,
   Callback = function(Value)
   	_G.InfDamage = Value
   end,
})

-- Extra
local ExtraTab = Window:CreateTab("Main", "home")
local Section = ExtraTab:CreateSection("Items")
local Button = ExtraTab:CreateButton({
   Name = "Get Spells",
   Callback = function()
       for _, itemName in ipairs({"Arcane Blast", "Barrage", "Cacti Boulder", "Enrage", "Fireball", "Ground Smash", "Heal", "Healing Blast", "Mushroom", "Rain", "Slime Splash", "Soul Absorb", "Stab", "Stomp", "Summon", "Sword Lunge", "The Twins Blast", "Tree Chop", "Whirlwind"}) do
     	game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(game:GetService("ReplicatedStorage").GameItems:FindFirstChild(itemName), 0)
				end
    end,
})
local Section = ExtraTab:CreateSection("Money")
local Button = ExtraTab:CreateButton({
   Name = "Inf Money",
   Callback = function()
       game:GetService("Players").LocalPlayer.PlayerGui.SwordGUI.Frame.GiveGold:FireServer(math.huge)
    end,
})
local Label = ExtraTab:CreateLabel("Only Works if the Seller Gui is Open", "triangle-alert")

-- Credits.
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Section = Credits:CreateSection("Co-Dev")
local Label = Credits:CreateLabel("Discord: world_star_hacker", "at-sign")
local Section = Credits:CreateSection("Discord Server")
local Label = Credits:CreateLabel("discord.gg/AESCuek87s")
local Button = Credits:CreateButton({
   Name = "Copy Server Link",
   Callback = function()
       setclipboard("discord.gg/AESCuek87s")
       toclipboard("discord.gg/AESCuek87s")
    end,
})