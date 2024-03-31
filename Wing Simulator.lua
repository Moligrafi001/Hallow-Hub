-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/Wing%20Simulator.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hallow Hub | Wing Simulator", HidePremium = false, IntroText = "Script By Moligrafi", SaveConfig = false, ConfigFolder = "Wing Simulator"})

-- Valores
_G.AutoClick = true

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