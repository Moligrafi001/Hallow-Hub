-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/Wing%20Simulator.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | Wing Simulator", HidePremium = false, IntroText = "Script By Moligrafi", SaveConfig = false, ConfigFolder = "Wing Simulator"})

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

OrionLib:Init()