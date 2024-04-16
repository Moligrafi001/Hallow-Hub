-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Wing%20Simulator.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Hallow Hub | Wing Simulator",
  HidePremium = false,
  IntroText = "Hallow Hub",
  SaveConfig = false,
  IntroIcon = "rbxassetid://17091459839",
  ConfigFolder = "Wing Simulator"})
OrionLib:MakeNotification({
	Name = "Última atualização - 01/04/2024",
	Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
	Image = "rbxassetid://17091459839",
	Time = 9
})

-- Valores
_G.AutoClick = true
_G.AutoSell = true

-- Funcoes
function AutoClick()
  while _G.AutoClick == true do
    local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click"):FireServer(unpack(args))
    wait(0.0001)
   end
end

function AutoSell()
  while _G.AutoSell == true do
    local args = {
    [1] = workspace:WaitForChild("Map"):WaitForChild("Areas"):WaitForChild("Wing Land"):WaitForChild("Ruins Island"):WaitForChild("Seller"):WaitForChild("Double")
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SellFeathers"):FireServer(unpack(args))
local args = {
    [1] = workspace:WaitForChild("Map"):WaitForChild("Areas"):WaitForChild("Wing Land"):WaitForChild("Main Land"):WaitForChild("Stores"):WaitForChild("Sellers"):WaitForChild("Normal")
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SellFeathers"):FireServer(unpack(args))
local args = {
    [1] = workspace:WaitForChild("Map"):WaitForChild("Areas"):WaitForChild("Wing Land"):WaitForChild("Heavenly Island"):WaitForChild("Seller"):WaitForChild("FiftyPerc")
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SellFeathers"):FireServer(unpack(args))
local args = {
    [1] = workspace:WaitForChild("Map"):WaitForChild("Areas"):WaitForChild("Wing Land"):WaitForChild("Space Island"):WaitForChild("Seller"):WaitForChild("OnePointSix")
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SellFeathers"):FireServer(unpack(args))
    wait(0.0001)
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
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
		AutoClick()
	end
})
Menu:AddToggle({
	Name = "Auto Sell",
	Default = false,
	Callback = function(Value)
		_G.AutoSell = Value
		AutoSell()
	end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()