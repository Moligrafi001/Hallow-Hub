-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Farm%20for%20Fun.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Farm for Fun! 🌾",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.AutoHarvest = false
_G.SpeedB = false
_G.GoldB = false
_G.GrowB = false
_G.MoneyB = false
_G.AutoRB = false
local HarvestCold = "No Waves"

-- Funcoes
local function AutoHarvest()
  while _G.AutoHarvest do
    for i = 1, 263 do
      local crop = "s" .. i
      local args = {
        [1] = {
          [1] = crop
        }
      }
      workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("harvest crop"):FireServer(unpack(args))
    end
    if HarvestCold == "No Waves" then
    	wait(0.33)
    elseif HarvestCold == "1 sec" then
    	wait(1)
    elseif HarvestCold == "3 sec" then
    	wait(3)
    end
  end
end
local function SpeedB()
	while _G.SpeedB do
		for _, part in pairs(workspace.__THINGS.Boosts:GetChildren()) do
			if part.Name == "Speed Boost" then
				workspace.__THINGS.__REMOTES:FindFirstChild("use boost"):InvokeServer(workspace.__THINGS.Boosts:FindFirstChild("Speed Boost"))
				if part:FindFirstChild("TouchInterest") then
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part.TouchInterest, 0)
					firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part.TouchInterest, 1)
					break
				end
			end
		end
		wait(0.33)
	end
end
local function GoldB()
	while _G.GoldB do
		for _, part in pairs(workspace.__THINGS.Boosts:GetChildren()) do
			if part.Name == "Gold Boost" then
				workspace.__THINGS.__REMOTES:FindFirstChild("use boost"):InvokeServer(workspace.__THINGS.Boosts:FindFirstChild("Gold Boost"))
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1)
				break
			end
		end
		wait(0.33)
	end
end
local function GrowB()
	while _G.GrowB do
		for _, part in pairs(workspace.__THINGS.Boosts:GetChildren()) do
			if part.Name == "Grow Boost" then
				workspace.__THINGS.__REMOTES:FindFirstChild("use boost"):InvokeServer(workspace.__THINGS.Boosts:FindFirstChild("Grow Boost"))
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1)
				break
			end
		end
		wait(0.33)
	end
end
local function MoneyB()
	while _G.MoneyB do
		for _, part in pairs(workspace.__THINGS.Boosts:GetChildren()) do
			if part.Name == "Money Boost" then
				workspace.__THINGS.__REMOTES:FindFirstChild("use boost"):InvokeServer(workspace.__THINGS.Boosts:FindFirstChild("Money Boost"))
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1)
				break
			end
		end
		wait(0.33)
	end
end
local function AutoRB()
  while _G.AutoRB do
    local args = {
    [1] = {}
}

workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("buy rebirth"):InvokeServer(unpack(args))
wait(5)
  end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Harvest",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoHarvest = Value
   	AutoHarvest()
   end,
})
local Dropdown = Menu:CreateDropdown({
   Name = "Harvest Cooldown",
   Options = {"No Waves", "1 sec", "3 sec"},
   CurrentOption = {"If you want to do Harvest Waves select the Speed"},
   MultipleOptions = false,
   Callback = function(Options)
   		HarvestCold = Options[1]
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoRB = Value
   	AutoRB()
   end,
})

-- Boosts
local BoostTab = Window:CreateTab("Boosts", "sparkles")
local Section = BoostTab:CreateSection("Auto Collect Boosts")
local Toggle =  BoostTab:CreateToggle({
   Name = "Speed Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.SpeedB = Value
   	AutoRB()
   end,
})
local Toggle =  BoostTab:CreateToggle({
   Name = "Gold Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GoldB = Value
   	GoldB()
   end,
})
local Toggle =  BoostTab:CreateToggle({
   Name = "Grow Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GrowB = Value
   	GrowB()
   end,
})
local Toggle =  BoostTab:CreateToggle({
   Name = "Money Boost",
   CurrentValue = false,
   Callback = function(Value)
   	_G.MoneyB = Value
   	MoneyB()
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