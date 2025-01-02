-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Evo%20Tycoon.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Evo Tycoon",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Movement
local WalkSpeedText = 16
local JumpPowerText = 50
_G.SetWalkSpeed = false
_G.SetJumpPower = false
_G.InfJump = false
_G.NoClip = false
local function SetWalkSpeed()
	while _G.SetWalkSpeed == true do
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed ~= WalkSpeedText then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = WalkSpeedText
		end
		wait(0.01)
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

-- Variáveis
_G.AutoCollect = false
_G.AutoBuy = false
_G.AntiLasers = false
_G.StealWepe = false
_G.PlayerESP = false

-- Locais
local CorInocente = Color3.fromRGB(255, 125, 0)

-- Funções
local function AutoCollect()
	local eumesmo = game.Players.LocalPlayer
	local function getCharacter()
	return eumesmo.Character or eumesmo.CharacterAdded:Wait()
	end
	local function getHumanoid()
		local character = getCharacter()
		return character:WaitForChild("Humanoid")
	end
	local function getHRP()
		local character = getCharacter()
		return character:WaitForChild("HumanoidRootPart")
	end
	local function checkGenerators(gen, HRP)
		for i = 1, 7 do
			local generatorName = "Generator" .. string.char(64 + i)
			for gera = 1, 4 do
				local final = generatorName .. gera
				if gen.Name == final then
					if gen:FindFirstChild("Ching") then
						firetouchinterest(HRP, gen.Ching, 0)
						firetouchinterest(HRP, gen.Ching, 1)
					end
				end
			end
			for gera = 1, 4 do
				local final = "Generator" .. gera
				if gen.Name == final then
					if gen:FindFirstChild("Ching") then
						firetouchinterest(HRP, gen.Ching, 0)
						firetouchinterest(HRP, gen.Ching, 1)
					end
				end
			end
		end
	end
	while _G.AutoCollect do
    local character = getCharacter()
		local humanoid = getHumanoid()
		local HRP = getHRP()
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == eumesmo.Name then
				for _, gen in pairs(tycoon:GetChildren()) do
					if workspace:FindFirstChild(eumesmo.Name) then
						if humanoid.Health >= 1 then
							if character:FindFirstChild("HumanoidRootPart") then
								checkGenerators(gen, HRP)
							end
						end
					end
				end
			end
		end
		wait(1)
	end
end
local function AntiLasers()
	while _G.AntiLasers == true do
		for _, tycoons in pairs(workspace.Tycoons:GetChildren()) do
			if tycoons:FindFirstChild("LaserDoor") then
				if tycoons.LaserDoor:FindFirstChild("Part3") then
					if tycoons.LaserDoor.Part3.CanTouch == true then
						tycoons.LaserDoor.Part3.CanTouch = false
					end
				end
			end
		end
		wait(0.01)
	end
	if _G.AntiLasers == false then
		for _, tycoons in pairs(workspace.Tycoons:GetChildren()) do
			if tycoons:FindFirstChild("LaserDoor") then
				if tycoons.LaserDoor:FindFirstChild("Part3") then
					if tycoons.LaserDoor.Part3.CanTouch == false then
						tycoons.LaserDoor.Part3.CanTouch = true
					end
				end
			end
		end
	end
end
local function StealWepe()
	while _G.StealWepe == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			for _, power in pairs(tycoon:GetChildren()) do
				if power:IsA("Model") and power:FindFirstChild("Part2") then
					for i = 1, 7 do
						local quase = "Power" .. string.char(64 + i)
						for v = 1, 3 do
							local final = quase .. v
							if power.Name == final then
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, power.Part2, 0)
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, power.Part2, 1)
							end
						end
					end
				end
			end
		end
		wait(1)
	end
end
local function PlayerESP()
	while _G.PlayerESP == true do
		for _, player in pairs(workspace:GetChildren()) do
			if player:FindFirstChild("Humanoid") and player:FindFirstChild("Health") then
				if player.Name ~= game.Players.LocalPlayer.Name then
					if player:FindFirstChild("Highlight") then
						if player.Highlight.Enabled == false then
							player.Highlight.Enabled = true
						end
						if player.Highlight.FillColor ~= CorInocente or player.Highlight.OutlineColor ~= CorInocente then
							player.Highlight.FillColor = CorInocente
							player.Highlight.OutlineColor = CorInocente
						end
					else
						local highlight = Instance.new("Highlight")
						highlight.FillColor = CorInocente
						highlight.OutlineColor = CorInocente
						highlight.FillTransparency = 0.4
						highlight.Adornee = player
						highlight.Parent = player
					end
				end
			end
		end
		wait(0.33)
	end

	for _, player in pairs(workspace:GetChildren()) do
		if player:FindFirstChild("Humanoid") and player:FindFirstChild("Health") then
			if player.Name ~= game.Players.LocalPlayer.Name then
				if player:FindFirstChild("Highlight") then
					player.Highlight.Enabled = false
				end
			end
		end
	end
end
local function AutoBuy()
	local eumesmo = game.Players.LocalPlayer
	local function getCharacter()
	return eumesmo.Character or eumesmo.CharacterAdded:Wait()
	end
	local function getHumanoid()
		local character = getCharacter()
		return character:WaitForChild("Humanoid")
	end
	local function getHRP()
		local character = getCharacter()
		return character:WaitForChild("HumanoidRootPart")
	end
	while _G.AutoBuy == true do
		local character = getCharacter()
		local humanoid = getHumanoid()
		local HRP = getHRP()
		if humanoid and humanoid.Health > 0 then
			for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
				if tycoon.Owner.Value == eumesmo.Name then
					for _, botao in pairs(tycoon:GetChildren()) do
						if botao:IsA("Model") then
							if botao:FindFirstChild("Part1") then
								if botao.Part1:FindFirstChild("BillboardGui2") then
									if botao.Part1.BillboardGui2:FindFirstChild("TextLabel") then
										local numero = tonumber(botao.Part1.BillboardGui2.TextLabel.Text:gsub("[^%d]", ""):match("%d+"))
										if numero <= game.Players.LocalPlayer.leaderstats.Cash.Value then
											for _, tt in pairs(botao:GetDescendants()) do
												if tt.Name == "TouchInterest" then
													firetouchinterest(HRP, tt.Parent, 0)
													firetouchinterest(HRP, tt.Parent, 1)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
		wait(0.33)
	end
end

-- Menu		
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Collect Money",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoCollect = Value
   	AutoCollect()
   end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	AutoBuy()
   end,
})
local Section = Menu:CreateSection("Helpful")
local Toggle =  Menu:CreateToggle({
   Name = "Steal Weapons",
   CurrentValue = false,
   Callback = function(Value)
   	_G.StealWepe = Value
   	StealWepe()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Anti Doors Lasers",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AntiLasers = Value
   	AntiLasers()
   end,
})

-- Combat		
local CombatTab = Window:CreateTab("Combat", "swords")
local Section = CombatTab:CreateSection("ESP")
local Toggle =  CombatTab:CreateToggle({
   Name = "Player ESP",
   CurrentValue = false,
   Callback = function(Value)
   	_G.PlayerESP = Value
   	PlayerESP()
   end,
})
local ColorPicker = CombatTab:CreateColorPicker({
    Name = "Innocent Color",
    Color = CorInocente,
    Flag = "ColorPicker1",
    Callback = function(Value)
    	CorInocente = Value
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