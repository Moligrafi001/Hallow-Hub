-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Slash%20Mobs%20Simulator.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | ⚔️ Slash Mobs Simulator",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.FastRegen = false
_G.QuestRewards = false
_G.KillAll = false

-- Funções
local function TakeDamageForChildren(children)
	for _, child in pairs(children) do
		pcall(function()
			local takeDamageEvent = game:GetService("ReplicatedStorage").Remote.Event.Fight:FindFirstChild("[C-S]TakeDamage")
			if takeDamageEvent and child:FindFirstChild("Humanoid") then
				takeDamageEvent:FireServer(child.Humanoid)
			end
		end)
	end
end
local function KillAll()
	while _G.KillAll == true do
		for _, roomGroup in pairs({"Room1", "Room2", "Room3"}) do
			for _, room in pairs(workspace[roomGroup]:GetChildren()) do
				if room:FindFirstChild("Mob") then
					TakeDamageForChildren(room.Mob:GetChildren())
				end
			end
		end
		wait(0.05)
	end
end
local function FastRegen()
	while _G.FastRegen == true do
		game:GetService("ReplicatedStorage").Remote.Event.Up:FindFirstChild("[C-S]TryRegen"):FireServer(1)
		wait(0.0001)
	end
end
local function GetCodes()
	game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer("SLASHRELEASE")
	game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer("2000likes")
end
local function QuestRewards()
	while _G.QuestRewards == true do
		for q = 1, 2 do
			local questie = "Q" .. q
			game:GetService("ReplicatedStorage").Remote.Event.DailyMission:FindFirstChild("[C-S]PlayerGetReward"):FireServer(questie)
		end
		wait(0.5)
	end
end
local function DoChallenge()
	game:GetService("ReplicatedStorage").Remote.Event.Eco:FindFirstChild("[C-S]Trybreakthrough"):FireServer()
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Combat")
local Toggle =  Menu:CreateToggle({
   Name = "Kill Aura",
   CurrentValue = false,
   Callback = function(Value)
   	_G.KillAll = Value
   	KillAll()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Fast Regen",
   CurrentValue = false,
   Callback = function(Value)
   	_G.FastRegen = Value
   	FastRegen()
   end,
})
local Button = Menu:CreateButton({
   Name = "Start Challenge",
   Callback = function()
   	DoChallenge()
    end,
})
local Section = Menu:CreateSection("Extra")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Gems (Slow)",
   CurrentValue = false,
   Callback = function(Value)
   	_G.QuestRewards = Value
   	QuestRewards()
   end,
})
local Button = Menu:CreateButton({
   Name = "Reedem Codes",
   Callback = function()
   	GetCodes()
    end,
})

-- Credits.
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
local Label = Credits:CreateLabel("🇧🇷 - Se encontrar algum bug ou algo fora do comum, sinta-se livre para entrar no servidor acima e reportar o ocorrido via ticket. Caso tenha alguma sugestão ou queira requerir algo, há um canal apropriado para isto no servidor mencionado.")