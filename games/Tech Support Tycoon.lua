-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Tech%20Support%20Tycoon.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Tech Support Tycoon",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoBuy = false
_G.UpgWork = false
_G.UpgSup = false

-- Funções
local function Work()
	game:GetService("ReplicatedStorage").DataFolder.Edits.RequestUpgrade:InvokeServer("Worker Speed")
end
local function Sup()
	game:GetService("ReplicatedStorage").DataFolder.Edits.RequestUpgrade:InvokeServer("Support Experience")
end
local function AutoBuy()
	while _G.AutoBuy == true do
		for _, plot in pairs(workspace.Plots:GetChildren()) do
			if plot:FindFirstChild("Buttons") then
				for _, botao in pairs(plot.Buttons:GetChildren()) do
					if botao:GetAttribute("Price") and not botao:GetAttribute("Hidden") then
						if botao.Name ~= "AdButton" and botao:GetAttribute("Price") <= game.Players.LocalPlayer.leaderstats.Cash.Value then
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, botao, 0)
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, botao, 1)
						end
					end
				end
			end
		end
		wait(0.33)
	end
end
local function UpgWork()
	while _G.UpgWork == true do
		Work()
		wait(0.1)
	end
end
local function UpgSup()
	while _G.UpgSup == true do
		Sup()
		wait(0.1)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Buttons")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Buttons",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	AutoBuy()
   end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Worker Speed",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgWork = Value
   	UpgWork()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Upgrade Support Experience",
   CurrentValue = false,
   Callback = function(Value)
   	_G.UpgSup = Value
   	UpgSup()
   end,
})

-- Credits
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Section = Credits:CreateSection("Discord Server")
local Label = Credits:CreateLabel("discord.gg/AESCuek87s")
local Button = Credits:CreateButton({
   Name = "Copy Server Link",
   Callback = function()
   	setclipboard("discord.gg/AESCuek87s")
   	toclipboard("discord.gg/AESCuek87s")
    end,
})
local Section = Credits:CreateSection("Note")
local Label = Credits:CreateLabel("If you find any bug join the discord and open a ticket")