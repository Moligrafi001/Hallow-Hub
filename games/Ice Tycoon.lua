-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Ice%20Tycoon.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Ice Tycoon",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoIce = false
_G.AutoMine = false

-- Funções
local function AutoIce()
	while _G.AutoIce == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == game.Players.LocalPlayer then
				fireclickdetector(tycoon.Essentials.Freezer.Pump.Click.ClickDetector)
			end
		end
	wait(0.05)
	end
end
local function AutoMine()
	while _G.AutoMine == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == game.Players.LocalPlayer then
				for _, ice in pairs(tycoon.Essentials.Freezer:GetChildren()) do
					if ice.Name == "Ice" and ice:FindFirstChild("Worth") and ice:FindFirstChild("ProximityPrompt") and ice:FindFirstChild("Shard") then
						fireproximityprompt(ice.ProximityPrompt)
					end
				end
			end
		end
		wait(1)
	end
end

-- Menu
local Menu = Window:CreateTab("Cash", "dollar-sign")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Click Pump",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoIce = Value
   	AutoIce()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Mine Ice",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoMine = Value
   	AutoMine()
   end,
})

-- Credits.
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