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
_G.ColetaSeed = false
_G.AutoOres = false

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
							print("Apertei Freezer 1!")
						end
				end
				if tycoon.Bought:FindFirstChild("Freezer2") then
					for _, ice in pairs(tycoon.Bought.Freezer2:GetChildren()) do
						if ice.Name == "Ice" and ice:FindFirstChild("Worth") and ice:FindFirstChild("ProximityPrompt") and ice:FindFirstChild("Shard") then
							fireproximityprompt(ice.ProximityPrompt)
							print("Apertei Freezer 2!")
						end
					end
				end
			end
		end
		wait(1)
	end
end
local function CompleteQuests()
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 0
	Rayfield:Notify({
		   Title = "Started the Auto Quest.",
		   Content = "Wait until it's done.",
		   Duration = 14,
		   Image = 17091459839,
       })
	local PlayerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	wait(1)
	workspace.Map.PlantGiver.Part.Position = PlayerPos
	for _, itens in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if itens:IsA("Tool") and itens.Name ~= "Sit" and itens.Name ~= "Find Button" then
			itens.Parent = game.Players.LocalPlayer.Character
		end
	end
	wait(1)
	workspace.Map.PlantReceiver.Position = PlayerPos
	wait(2)
	workspace.Map.BrewGiver.Part.Position = PlayerPos
	for _, itens in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if itens:IsA("Tool") and itens.Name ~= "Sit" and itens.Name ~= "Find Button" then
			itens.Parent = game.Players.LocalPlayer.Character
		end
	end
	wait(1)
	workspace.Map.BrewReceiver.Position = PlayerPos
	wait(2)
	workspace.Map.CookieGiver.Part.Position = PlayerPos
	for _, itens in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if itens:IsA("Tool") and itens.Name ~= "Sit" and itens.Name ~= "Find Button" then
			itens.Parent = game.Players.LocalPlayer.Character
		end
	end
	wait(1)
	workspace.Map.CookieReceiver.Position = PlayerPos
	wait(2)
	workspace.Map.BrushGiver.Part.Position = PlayerPos
	for _, itens in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if itens:IsA("Tool") and itens.Name ~= "Sit" and itens.Name ~= "Find Button" then
			itens.Parent = game.Players.LocalPlayer.Character
		end
	end
	wait(1)
	workspace.Map.BrushReceiver.Position = PlayerPos
	wait(2)
	workspace.Map.GetForgotten.Position = PlayerPos
	wait(2)
	Rayfield:Notify({
		   Title = "It's done! Yay!",
		   Content = "Have fun with your money boost!",
		   Duration = 3,
		   Image = 17091459839,
       })
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
end
local function ColetaSeed()
	while _G.ColetaSeed == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == game.Players.LocalPlayer then
				for _, flor in pairs(tycoon.Bought:GetChildren()) do
					for numero = 1, 8 do
						local final = "Flowers" .. numero
						if flor.Name == final then
							for _, pp in pairs(flor:GetDescendants()) do
								if pp:IsA("ProximityPrompt") then
									fireproximityprompt(pp)
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
local function AutoOres()
	while _G.AutoOres == true do
		for _, tycoon in pairs(workspace.Tycoons:GetChildren()) do
			if tycoon.Owner.Value == game.Players.LocalPlayer then
				for _, ore in pairs(tycoon.Bought:GetChildren()) do
					for numero = 1, 3 do
						local final = "Ore" .. numero
						if ore.Name == final then
							for _, pp in pairs(ore:GetDescendants()) do
								if pp:IsA("ProximityPrompt") then
									fireproximityprompt(pp)
								end
							end
						end
					end
				end
			end
		end
		wait(0.33)
	end
	wait(0.5)
	if _G.AutoOres == true then
		Rayfield:Notify({
			Title = "Pro TIP ↓",
			Content = "Step between 2 ores and you'll see the magic.",
			Duration = 3,
			Image = 17091459839,
			})
	end
end
local function BuyData()
	while _G.BuyData == true do
		game:GetService("ReplicatedStorage").BuyChip:FireServer()
		wait(0.5)
	end
end

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


-- Menu
local Menu = Window:CreateTab("Main", "home")
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
local Toggle =  Menu:CreateToggle({
   Name = "Auto Collect Seeds",
   CurrentValue = false,
   Callback = function(Value)
   	_G.ColetaSeed = Value
   	ColetaSeed()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Mine Ores",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoOres = Value
   	AutoOres()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Buy Data Chips",
   CurrentValue = false,
   Callback = function(Value)
   	_G.BuyData = Value
   	BuyData()
   end,
})
local Section = Menu:CreateSection("More")
local Button =  Menu:CreateButton({
   Name = "Complete Quests",
   CurrentValue = false,
   Callback = function(Value)
   	CompleteQuests()
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