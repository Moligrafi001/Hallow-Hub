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