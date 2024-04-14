-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Planet%20Clicker.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | Planet Clicker 🌎",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    ConfigFolder = "Planet Clicker 🌎"
})
OrionLib:MakeNotification({
    Name = "Última atualização - 06/04/2024",
    Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
    Image = "rbxassetid://4483345998",
    Time = 9
})

-- Auto Click
_G.AutoClick = false
function AutoClick()
		while _G.AutoClick == true do
			game:GetService("ReplicatedStorage").ClickedButton:FireServer()
			wait(0.0001)
		end
end

-- Auto Rebirth
_G.AutoRebirth = false
function AutoRebirth()
		while _G.AutoRebirth == true do
			game:GetService("ReplicatedStorage").Rebirth:FireServer()
			wait(1)
		end
end

-- Auto Research
_G.AutoResearch = false
function AutoResearch()
		while _G.AutoResearch == true do
			local args = {
    	[1] = game:GetService("Players").LocalPlayer.PlayerGui.ResearchGui.Frame.ScrollingFrame.Research1
}

			game:GetService("ReplicatedStorage").Research:InvokeServer(unpack(args))
			wait(1)
		end
end

-- Menu
local Menu = Window:MakeTab({
    Name = "Menu",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Menu:AddSection({
    Name = "Auto Farm"
})
Menu:AddToggle({
    Name = "Auto Clicker",
    Default = false,
    Callback = function(Value)
      _G.AutoClick = Value
      AutoClick()
    end
})
Menu:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
      _G.AutoRebirth = Value
      AutoRebirth()
    end
})

-- Buy
local Buy = Window:MakeTab({
    Name = "Buy",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Buy:AddSection({
    Name = "Auto Buy"
})
Buy:AddToggle({
    Name = "Auto Research",
    Default = false,
    Callback = function(Value)
      _G.AutoResearch = Value
      AutoResearch()
    end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()