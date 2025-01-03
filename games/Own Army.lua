workspace.Live["Warrior 843"]
local args = {
    [1] = "RegisterHit",
    [2] = {
        [1] = workspace.Live:FindFirstChild("Warrior 710")
    }
}

game:GetService("ReplicatedStorage").Remotes.Sword:FireServer(unpack(args))

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Own%20Army.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Create Your Own Army! ⚔️ [Red vs Blue]",
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

-- Valores
_G.AutoShoot = false
_G.AutoBomb = false
_G.Killahr = false

-- Locais
local ShootCooldown = 0.05
local BombCooldown = 0.3

-- Funções
local function AutoShoot()
	while _G.AutoShoot == true do
		game:GetService("ReplicatedStorage").Remotes.Bow:FireServer("ShootArrow", game:GetService("Workspace").CurrentCamera.CFrame.Position + (game:GetService("Workspace").CurrentCamera.CFrame.LookVector * 50))
		wait(ShootCooldown)
	end
end
local function AutoBomb()
	while _G.AutoBomb == true do
		game:GetService("ReplicatedStorage").Remotes.Network:FireServer("UseBomb", game:GetService("Workspace").CurrentCamera.CFrame.Position + (game:GetService("Workspace").CurrentCamera.CFrame.LookVector * 50))
		wait(BombCooldown)
	end
end
local a = game.Players.LocalPlayer.Team
local b = workspace.Live["Warrior 364"]:GetAttribute("Team")

if b == "Red" then
print(a)
end
local function Killahr()
	while _G.Killahr == true do
		for _, enemy in pairs(workspace.Live:GetChildren()) do
			if enemy:GetAttribute("Team") ~= game.Players.LocalPlayer.Team then
				game:GetService("ReplicatedStorage").Remotes.Sword:FireServer("RegisterHit", {workspace.Live:FindFirstChild(enemy.Name)})
			end
		end
		wait(0.05)
	end
end

-- Menu
local Menu = Window:CreateTab("Combat", "swords")
local Section = Menu:CreateSection("Basic")
local Input = Menu:CreateInput({
   Name = "Shoot Arrow Cooldown",
   CurrentValue = "",
   PlaceholderText = "Example: 0.05",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	ShootCooldown = Text
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Shoot Arrow",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoShoot = Value
   	AutoShoot()
   end,
})
local Section = Menu:CreateSection("Extra")
local Input = Menu:CreateInput({
   Name = "Shoot Bomb Cooldown",
   CurrentValue = "",
   PlaceholderText = "Example: 0.3",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   	BombCooldown = Text
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Shoot Bomb",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBomb = Value
   	AutoBomb()
   end,
})
local Section = Menu:CreateSection("Super OP")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Shoot Bomb",
   CurrentValue = false,
   Callback = function(Value)
   	_G.Killahr = Value
   	Killahr()
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