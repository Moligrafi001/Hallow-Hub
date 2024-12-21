-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Buttone.lua",true))()
if game.PlaceId == 87643681021528 then
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find The Button",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSkip = false

-- Funções
local function SkipStage()
	local Atual = game.Players.LocalPlayer.leaderstats.Stage.Value
	local SkipTo = "Stage" .. Atual
if (Atual <= 8) or (Atual >= 20 and Atual <= 25) or (Atual >= 29) then
	fireclickdetector(workspace[SkipTo].Button["Bruh Button"].rr.ClickDetector)
end
if (Atual >= 9 and Atual <= 19) or (Atual >= 26 or Atual <= 28) then
	fireclickdetector(workspace[SkipTo].Button.rr.ClickDetector)
end
end
local function AutoSkip()
	while _G.AutoSkip == true do
		SkipStage()
		wait(0.9)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Stage")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Skip Stage",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoSkip = Value
   	AutoSkip()
   end,
})
local Button = Menu:CreateButton({
   Name = "Skip Stage",
   Callback = function()
       SkipStage()
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
end
if game.PlaceId == 75427975008245 then
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find The Button",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSkip = false

-- Funções
local function SkipStage()
	local Atual = game.Players.LocalPlayer.leaderstats.Stage.Value
	local SkipTo = "Stage " .. Atual
	fireclickdetector(workspace[SkipTo].Button["Bruh Button"].rr.ClickDetector)
end
local function AutoSkip()
	while _G.AutoSkip == true do
		SkipStage()
		wait(0.9)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Stage")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Skip Stage",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoSkip = Value
   	AutoSkip()
   end,
})
local Button = Menu:CreateButton({
   Name = "Skip Stage",
   Callback = function()
       SkipStage()
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
end