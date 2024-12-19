-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Growth%20Incremental.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | 📈 Growth Incremental!",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoXP = false
_G.ClaimTime = false
_G.AutoMoney = false

-- Funções
local function AutoXP()
	while _G.AutoXP == true do
		game:GetService("ReplicatedStorage").HandleXP:FireServer("XP", math.huge)
		wait(1)
	end
end
local function ClaimTime()
	while _G.ClaimTime == true do
		for time = 1, 9 do
			game:GetService("ReplicatedStorage").GiftFolder.ClaimGift:InvokeServer(time)
		end
		wait(0.5)
	end
end
local function AutoMoney()
	while _G.AutoMoney == true do
		game:GetService("ReplicatedStorage").HandleMoney:FireServer(0)
		wait(0.01)
	end
end

-- Menu
local Menu = Window:CreateTab("Money", "dollar-sign")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Money",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoMoney = Value
   	AutoMoney()
   end,
})
local Section = Menu:CreateSection("Extra")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Claim Time Rewards",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ClaimTime = Value
   	ClaimTime()
   end,
})
-- LPs Tab
local LPsTab = Window:CreateTab("LPs", "sparkles")
local Section = LPsTab:CreateSection("Auto Farm")
local Toggle =  LPsTab:CreateToggle({
   Name = "Auto XP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoXP = Value
   	AutoXP()
   end,
})
local Section = LPsTab:CreateSection("Upgrade")

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