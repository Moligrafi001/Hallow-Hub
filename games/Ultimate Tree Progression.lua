-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Ultimate%20Tree%20Progression.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Ultimate Tree Progression",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoBuy = false
_G.AutoPrestige = false

--Funções
local function AutoBuy()
	while _G.AutoBuy == true do
		for numero = 1, 21 do
			local final = "Upgrade " .. numero
			for _, upg in pairs(workspace:GetChildren()) do
				if upg.Name == final then
					if upg.Base.SurfaceGui.Cost.Text ~= "Upgrade Bought" then
						fireclickdetector(upg.Base.ClickDetector)
					end
				end
			end
		end
		wait(0.1)
	end
end
local function AutoPrestige()
	while _G.AutoPrestige == true do
		if workspace:FindFirstChild("Prestige Reset Layer 1") then
			fireclickdetector(workspace["Prestige Reset Layer 1"].Button.Button.ClickDetector)
		end
		wait(1)
	end
end
local function PrestUpg()
	while _G.PrestUpg == true do
		for numero = 1, 13 do
			local final = "PrestigeUP" .. numero
			for _, upg in pairs(workspace:GetChildren()) do
				if upg.Name == final then
					if upg.Base.SurfaceGui.Cost.Text ~= "Upgrade Bought" then
						fireclickdetector(upg.Base.ClickDetector)
					end
				end
			end
		end
		wait(0.1)
	end
end
local function CavePuta()
	while _G.CavePuta == true do
		if workspace:FindFirstChild("Cave Reset Layer 2") then
			fireclickdetector(workspace["Cave Reset Layer 2"].Stage4.Button.ClickDetector)
		end
		wait(0.33)
	end
end
local function RuneGain()
	while _G.RuneGain == true do
		if workspace:FindFirstChild("Generator") then
			fireclickdetector(workspace.RuneGenerator.Upgrader.Text.GainUpgrader["UpgradeGain3-1"].ClickDetector)
		end
		wait(0.33)
	end
end
local function RuneSto()
	while _G.RuneSto == true do
		if workspace:FindFirstChild("RuneGenerator") then
			fireclickdetector(workspace.RuneGenerator.Upgrader.Text.StorageUpgrader["UpgradeGain3-1"].ClickDetector)
		end
		wait(0.33)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	AutoBuy()
   end,
})
local Section = Menu:CreateSection("Prestige")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Prestige",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoPrestige = Value
   	AutoPrestige()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Buy Prestige Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PrestUpg = Value
   	PrestUpg()
   end,
})
local Section = Menu:CreateSection("Cave")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Reset",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PrestUpg = Value
   	PrestUpg()
   end,
})
local Section = Menu:CreateSection("Rune Generator")
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Gain",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PrestUpg = Value
   	PrestUpg()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Storage",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PrestUpg = Value
   	PrestUpg()
   end,
})

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