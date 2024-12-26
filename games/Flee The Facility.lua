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
_G.Fullbright = false
_G.AntiPcError = false

-- ESP
_G.PlayerESP = false
local CorInocente = Color3.fromRGB(255, 125, 0)
local CorBesta = Color3.fromRGB(255, 0, 0)
local function PlayerESP()
	while _G.PlayerESP == true do
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") and player:FindFirstChild("Health") then
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player:FindFirstChild("BeastPowers") then
						if player:FindFirstChild("Highlight") then
							if player.Highlight.FillColor or player.Highlight.OutlineColor ~= CorBesta then
								player.Highlight.FillColor = CorBesta
								player.Highlight.OutlineColor = CorBesta
							end
						else
							local highlight = Instance.new("Highlight")
							highlight.FillColor = CorBesta
							highlight.OutlineColor = CorBesta
							highlight.FillTransparency = 0.6
							highlight.Adornee = player
							highlight.Parent = player
						end
					else
						if player:FindFirstChild("Highlight") then
							if player.Highlight.FillColor or player.Highlight.OutlineColor ~= CorInocente then
								player.Highlight.FillColor = CorInocente
								player.Highlight.OutlineColor = CorInocente
							end
						else
							local highlight = Instance.new("Highlight")
							highlight.FillColor = CorInocente
							highlight.OutlineColor = CorInocente
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
--
_G.ComputerESP = false
local function ComputerESP()
	while _G.ComputerESP == true do
		for _, map in pairs(workspace:GetChildren()) do
			for _, computer in pairs(map:GetChildren()) do
				if computer.Name == "ComputerTable" then
					if computer:FindFirstChild("Screen") then
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
							highlight.FillTransparency = 1
							highlight.Adornee = computer
							highlight.Parent = computer
						end
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
--
_G.FreezeESP = false
local CorCapsula = Color3.fromRGB(85, 178, 224)
local function FreezeESP()
	while _G.FreezeESP == true do
		for _, map in pairs(workspace:GetChildren()) do
			for _, pod in pairs(map:GetChildren()) do
				if pod.Name == "FreezePod" then
					if pod:FindFirstChild("Highlight") then
						if pod.Highlight.FillColor ~= CorCapsula or pod.Highlight.OutlineColor ~= CorCapsula then
							pod.Highlight.FillColor = CorCapsula
							pod.Highlight.OutlineColor = CorCapsula
						elseif pod.Highlight.Enabled == false then
							pod.Highlight.Enabled = true
						end
					else
						local highlight = Instance.new("Highlight")
						highlight.FillColor = CorCapsula
						highlight.OutlineColor = CorCapsula
						highlight.FillTransparency = 0.6
						highlight.Adornee = pod
						highlight.Parent = pod
					end
				end
			end
		end
		wait(0.33)
	end
	if _G.FreezeESP == false then
		for _, map in pairs(workspace:GetChildren()) do
			for _, pod in pairs(map:GetChildren()) do
				if pod.Name == "FreezePod" then
					if pod:FindFirstChild("Highlight") then
						if pod.Highlight.Enabled == true then
							pod.Highlight.Enabled = false
						end
					end
				end
			end
		end
	end
end
--
_G.ExitESP = false
local CorSaida = Color3.fromRGB(208, 255, 69)
local function ExitESP()
	while _G.ExitESP == true do
		for _, map in pairs(workspace:GetChildren()) do
			for _, pod in pairs(map:GetChildren()) do
				if pod.Name == "ExitDoor" then
					if pod:FindFirstChild("Highlight") then
						if pod.Highlight.FillColor ~= CorSaida or pod.Highlight.OutlineColor ~= CorSaida then
							pod.Highlight.FillColor = CorSaida
							pod.Highlight.OutlineColor = CorSaida
						elseif pod.Highlight.Enabled == false then
							pod.Highlight.Enabled = true
						end
					else
						local highlight = Instance.new("Highlight")
						highlight.FillColor = CorSaida
						highlight.OutlineColor = CorSaida
						highlight.FillTransparency = 0.6
						highlight.Adornee = pod
						highlight.Parent = pod
					end
				end
			end
		end
		wait(0.33)
	end
	if _G.ExitESP == false then
		for _, map in pairs(workspace:GetChildren()) do
			for _, pod in pairs(map:GetChildren()) do
				if pod.Name == "ExitDoor" then
					if pod:FindFirstChild("Highlight") then
						if pod.Highlight.Enabled == true then
							pod.Highlight.Enabled = false
						end
					end
				end
			end
		end
	end
end

-- Funções
local function Fullbright()
    while _G.Fullbright == true do
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 0
        game:GetService("Lighting").GlobalShadows = false
        wait(0.01)
    end
    game:GetService("Lighting").Brightness = 1
    game:GetService("Lighting").ClockTime = 14
    game:GetService("Lighting").FogEnd = 10000000
    game:GetService("Lighting").GlobalShadows = true
    game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(200, 200, 200)
end
local function NoFog()
	game.Lighting.FogStart = 0
end
local function AntiPcError()
	while _G.AntiPcError == true do
		game:GetService("ReplicatedStorage").RemoteEvent:FireServer("SetPlayerMinigameResult", true)
		wait(0.01)
	end
end
local SpyExectd = false
local function CallSpy()
	if SpyExectd == false then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/ChatSpy.lua",true))()
		Rayfield:Notify({
	   Title = "Chat Spy executed!",
	   Content = "The messages will appear in orange on the chat.",
	   Duration = 4,
	   Image = 17091459839,
		})
	else
		Rayfield:Notify({
	   Title = "Only once!",
	   Content = "You already executed the Chat Spy!",
	   Duration = 4,
	   Image = 17091459839,
		})
	end
end
local function InvadeMatch()
	local character = game.Players.LocalPlayer.character
	if character then
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		humanoidRootPart.CFrame = CFrame.new(124.5, 25.99999857, 138.5)
		game.Workspace.CurrentCamera.CFrame = CFrame.new(124.5, 4.99999857, 138.5, -0.351053178, 0, 0.936355531, 0, 1, 0, -0.936355531, 0, -0.351053178)
	end
end
local function InvadeMatch()
	local character = game.Players.LocalPlayer.character
	if character then
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		humanoidRootPart.CFrame = CFrame.new(124.5, 25.99999857, 138.5)
		game.Workspace.CurrentCamera.CFrame = CFrame.new(124.5, 4.99999857, 138.5, -0.351053178, 0, 0.936355531, 0, 1, 0, -0.936355531, 0, -0.351053178)
	end
end

-- Movement
local WalkSpeedText = 16
local JumpPowerText = 50
_G.SetWalkSpeed = false
_G.SetJumpPower = false
_G.InfJump = false
_G.NoClip = false
_G.NoSlow = false
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.1)
	end
	if _G.SetWalkSpeed == false then
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
	end
end
local function SetJumpPower()
	while _G.SetJumpPower == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower ~= JumpPowerText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = JumpPowerText
		end
		wait(0.01)
		end
	if _G.SetJumpPower == false then
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
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
local function NoSlow()
	while _G.NoSlow == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed <= 16 then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
		end
		wait(0.01)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Helpful")
local Toggle =  Menu:CreateToggle({
   Name = "Anti PC Error",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AntiPcError = Value
   	AntiPcError()
   end,
})
local Section = Menu:CreateSection("Misc")
local Button = Menu:CreateButton({
   Name = "TP to MAP",
   Callback = function()
       InvadeMatch()
    end,
})
local Button = Menu:CreateButton({
   Name = "Spy Priv Chats",
   Callback = function()
       CallSpy()
       SpyExectd = true
    end,
})

-- Visual
local VisualTab = Window:CreateTab("Visual", "eye")
local Section = VisualTab:CreateSection("Misc")
local Toggle =  VisualTab:CreateToggle({
   Name = "Fullbright",
   CurrentValue = false,
   Callback = function(Value)
   	_G.Fullbright = Value
   	Fullbright()
   end,
})
local Button = VisualTab:CreateButton({
   Name = "No Fog",
   Callback = function()
       NoFog()
    end,
})
local Section = VisualTab:CreateSection("Player ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PlayerESP = Value
   	PlayerESP()
   end,
})
local ColorPicker = VisualTab:CreateColorPicker({
    Name = "Innocent Color",
    Color = CorInocente,
    Flag = "ColorPicker1",
    Callback = function(Value)
    	CorInocente = Value
    end
})
local ColorPicker = VisualTab:CreateColorPicker({
    Name = "Beast Color",
    Color = CorBesta,
    Flag = "ColorPicker1",
    Callback = function(Value)
    	CorBesta = Value
    end
})
local Section = VisualTab:CreateSection("Computer ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "Computer ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ComputerESP = Value
   	ComputerESP()
   end,
})
local Section = VisualTab:CreateSection("Capsule ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "Capsule ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FreezeESP = Value
   	FreezeESP()
   end,
})
local ColorPicker = VisualTab:CreateColorPicker({
    Name = "Capsule Color",
    Color = CorCapsula,
    Flag = "ColorPicker1",
    Callback = function(Value)
    	CorCapsula = Value
    end
})
local Section = VisualTab:CreateSection("Exit ESP")
local Toggle =  VisualTab:CreateToggle({
   Name = "Exit ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ExitESP = Value
   	ExitESP()
   end,
})
local ColorPicker = VisualTab:CreateColorPicker({
    Name = "Exit Color",
    Color = CorSaida,
    Flag = "ColorPicker1",
    Callback = function(Value)
    	CorSaida = Value
    end
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
local Toggle = MoveTab:CreateToggle({
   Name = "Anti Slow",
   CurrentValue = false,
   Callback = function(Value)
   	_G.NoSlow = Value
   	NoSlow()
   end,
})
local Toggle = MoveTab:CreateToggle({
   Name = "No Clip",
   CurrentValue = false,
   Flag = "NoClipToggle",
   Callback = function(Value)
   	_G.NoClip = Value
   	NoClip()
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

while true do
	if game.Players.LocalPlayer:FindFirstChild("PlayerGui") then
		if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MenusTabFrame.Visible == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MenusTabFrame.Active == false then
			game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MenusTabFrame.Visible = true
			game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.MenusTabFrame.Active = true
		end
	end
	wait(1)
end