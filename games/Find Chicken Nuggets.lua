-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Find%20Chicken%20Nuggets.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Find Chicken Nuggets! 🐔",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoSkip = false
_G.ButtonESP = false

-- Funções
local function SkipStage()
	local PlayerStage = game.Players.LocalPlayer.Stage.Value
	local SkipTo = PlayerStage + 1
	if game.Players.LocalPlayer.Mode.Value == "Easy" then
		if workspace.Clickable:FindFirstChild(SkipTo) then
			fireclickdetector(workspace.Clickable[SkipTo].ClickDetector)
		end
	end
end
local function AutoSkip()
	while _G.AutoSkip == true do
		SkipStage()
		wait(2)
	end
end
local function ButtonESP()
	while _G.ButtonESP == true do
		if game.Players.LocalPlayer.Mode.Value == "Easy" then
			local PlayerStage = game.Players.LocalPlayer.Stage.Value
			local SkipTo = PlayerStage + 1
			if workspace.Clickable:FindFirstChild(SkipTo) then
				if not workspace.Clickable[SkipTo]:FindFirstChild("Highlight") then
					local highlight = Instance.new("Highlight")
					highlight.FillColor = Color3.fromRGB(255, 125, 0)
					highlight.OutlineColor = Color3.fromRGB(255, 125, 0)
					highlight.FillTransparency = 0.6
					highlight.Adornee = workspace.Clickable[SkipTo]
					highlight.Parent = workspace.Clickable[SkipTo]
				elseif workspace.Clickable[SkipTo]:FindFirstChild("Highlight") then
					if workspace.Clickable[SkipTo].Highlight.Enabled == false then
						workspace.Clickable[SkipTo].Highlight.Enabled = true
					end
				end
			end
		end
		wait(0.01)
	end
	if _G.ButtonESP == false then
		local PlayerStage = game.Players.LocalPlayer.Stage.Value
		local SkipTo = PlayerStage + 1
		if workspace.Clickable:FindFirstChild(SkipTo) then
			if workspace.Clickable[SkipTo]:FindFirstChild("Highlight") then
				if workspace.Clickable[SkipTo].Highlight.Enabled == true then
					workspace.Clickable[SkipTo].Highlight.Enabled = false
				end
			end
		end
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
local Section = Menu:CreateSection("ESP")
local Toggle =  Menu:CreateToggle({
   Name = "ESP Nuggets",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ButtonESP = Value
   	ButtonESP()
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