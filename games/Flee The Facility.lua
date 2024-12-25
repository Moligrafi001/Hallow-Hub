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
						highlight.FillTransparency = 0.6
						highlight.Adornee = computer
						highlight.Parent = computer
					end
				end
			end
		end
		wait(1)
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