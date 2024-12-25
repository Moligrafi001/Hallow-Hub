-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Flee%20The%20Facility.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Flee The Facility",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.ComputerESP = false
_G.PlayerESP = false

-- Funções
local function ComputerESP()
	while _G.ComputerESP == true do
		for _, map in pairs(workspace:GetChildren()) do
			for _, computer in pairs(map:GetChildren()) do
				if computer.Name == "ComputerTable" then
					if computer:FindFirstChild("Highlight") then
						if computer.Highlight.FillColor ~= computer.Screen.Color or computer.Highlight.OutlineColor ~= computer.Screen.Color then
							computer.Highlight.FillColor = computer.Screen.Color
							computer.Highlight.OutlineColor = computer.Screen.Color
						elseif computer.Highlight.Enabled == false then
							computer.Highlight.Enabled = true
						end
					else
						local highlight = Instance.new("Highlight")
						highlight.FillColor = computer.Screen.Color
						highlight.OutlineColor = computer.Screen.Color
						highlight.FillTransparency = 0
						highlight.Adornee = computer
						highlight.Parent = computer
					end
				end
			end
		end
		wait(0.33)
	end
	if _G.ComputerESP == false then
		for _, map in pairs(workspace:GetChildren()) do
			for _, computer in pairs(map:GetChildren()) do
				if computer.Name == "ComputerTable" then
					if computer:FindFirstChild("Highlight") then
						if computer.Highlight.Enabled == true then
							computer.Highlight.Enabled = false
						end
					end
				end
			end
		end
	end
end
local function PlayerESP()
	while _G.PlayerESP == true do
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") and player:FindFirstChild("Health") then
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player:FindFirstChild("BeastPowers") then
						if player:FindFirstChild("Highlight") then
							if player.Highlight.FillColor or player.Highlight.OutlineColor ~= Color3.fromRGB(255, 0, 0) then
								player.Highlight.FillColor = Color3.fromRGB(255, 0, 0)
								player.Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
							end
						else
							local highlight = Instance.new("Highlight")
							highlight.FillColor = Color3.fromRGB(255, 0, 0)
							highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
							highlight.FillTransparency = 0.6
							highlight.Adornee = player
							highlight.Parent = player
						end
					else
						if player:FindFirstChild("Highlight") then
							if player.Highlight.FillColor or player.Highlight.OutlineColor ~= Color3.fromRGB(255, 125, 0) then
								player.Highlight.FillColor = Color3.fromRGB(255, 125, 0)
								player.Highlight.OutlineColor = Color3.fromRGB(255, 125, 0)
							end
						else
							local highlight = Instance.new("Highlight")
							highlight.FillColor = Color3.fromRGB(255, 125, 0)
							highlight.OutlineColor = Color3.fromRGB(255, 125, 0)
							highlight.FillTransparency = 0.6
							highlight.Adornee = player
							highlight.Parent = player
						end
					end
					if player:FindFirstChild("Highlight") then
						if player.Highlight.Enabled == false then
							player.Highlight.Enabled = true
						end
					end
				end
			end
		end
		wait(0.33)
	end
	if _G.PlayerESP == false then
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") and player:FindFirstChild("Health") then
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player:FindFirstChild("Highlight") then
						if player.Highlight.Enabled == true then
							player.Highlight.Enabled = false
						end
					end
				end
			end
		end
	end
end

-- Movement
_G.SetWalkSpeed = false
_G.SetJumpPower = false
_G.InfJump = false
_G.InfJump = false
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.1)
	end
	if _G.SetWalkSpeed == false then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
	end
end
local function SetJumpPower()
	while _G.SetJumpPower == true do
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower ~= JumpPowerText then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = JumpPowerText
		end
		wait(0.01)
		end
	if _G.SetJumpPower == false then
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = 50
	end
end
local function InfJump()
	while _G.InfJump == true do
		game:GetService("UserInputService").JumpRequest:connect(function()
			if _G.InfJump == true then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
			end
		end)
		wait(0.1)
	end
end
local function NoClip()
	while _G.NoClip == true do
		for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if part:IsA("BasePart") then
				if _G.NoClip then
					part.CanCollide = false
				else
					part.CanCollide = true
				end
			end
		end
		wait(0.1)
	end
end

-- Visual
local VisualTab = Window:CreateTab("Visual", "eye")
local Section = VisualTab:CreateSection("ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "Computer ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ComputerESP = Value
   	ComputerESP()
   end,
})
local Toggle =  VisualTab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PlayerESP = Value
   	PlayerESP()
   end,
})

-- Movement
local MoveTab = Window:CreateTab("Movement", "chevrons-up")
local Section = MoveTab:CreateSection("Walk")
local Input = MoveTab:CreateInput({
   Name = "Player Walk Speed",
   CurrentValue = "",
   Flag = "WalkSpeedInput",
   PlaceholderText = "Default Walk Speed = 16",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	WalkSpeedText = Text
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Toggle Walk Speed",
   CurrentValue = false,
   Flag = "WalkSpeedToggle",
   Callback = function(Value)
   	_G.SetWalkSpeed = Value
   	SetWalkSpeed()
   end,
})
local Section = MoveTab:CreateSection("Jump")
local Input = MoveTab:CreateInput({
   Name = "Player Jump Power",
   CurrentValue = "",
   Flag = "JumpPowerInput",
   PlaceholderText = "Default Jump Power = 50",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	JumpPowerText = Text
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Toggle Jump Power",
   CurrentValue = false,
   Flag = "JumpPowerToggle",
   Callback = function(Value)
   	_G.SetJumpPower = Value
   	SetJumpPower()
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "Inf Jump",
   CurrentValue = false,
   Flag = "InfJumpToggle",
   Callback = function(Value)
   	_G.InfJump = Value
   	InfJump()
   end,
})
local Section = MoveTab:CreateSection("More")
local Toggle = MoveTab:CreateToggle({
   Name = "No Clip",
   CurrentValue = false,
   Flag = "NoClipToggle",
   Callback = function(Value)
   	_G.NoClip = Value
   	NoClip()
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