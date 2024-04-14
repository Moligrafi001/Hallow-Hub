-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Build%20Bunker%20To%20Survive.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | Build Bunker To Survive",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    ConfigFolder = "Build Bunker To Survive"
})

-- local
local selectedVehicle = "Bike"

-- Auto Research
_G.AutoResearch = false
function AutoResearch()
        while _G.AutoResearch == true do
            game:GetService("ReplicatedStorage").Events.FinishMinigame:FireServer()
            wait(0.001)
        end
end

-- Auto Sell
_G.AutoSell = false
function fireproximityprompt(ProximityPrompt, Skip)
    assert(ProximityPrompt, "Argument #1 Missing or nil")
    assert(typeof(ProximityPrompt) == "Instance" and ProximityPrompt:IsA("ProximityPrompt"), "Attempted to fire a Value that is not a ProximityPrompt")

    if Skip then
        ProximityPrompt.HoldDuration = 0
    end

    ProximityPrompt:InputHoldBegin()
    ProximityPrompt:InputHoldEnd()
end
function AutoSell()
        while _G.AutoSell == true do
            fireproximityprompt(Workspace.Map.SellPoint.Sell.Glow.ProximityPrompt, true)
            wait(0.3)
        end
end

-- Vehicle Spawn
function VehicleSpawn()
	if selectedVehicle == "E-Bike" then
		local args = {
    [1] = "EBike"
}

game:GetService("ReplicatedStorage").Events.SpawnVehicle:FireServer(unpack(args))
		else
  local args = {
  [1] = selectedVehicle
}

game:GetService("ReplicatedStorage").Events.SpawnVehicle:FireServer(unpack(args))
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
    Name = "Auto Research",
    Default = false,
    Callback = function(Value)
      _G.AutoResearch = Value
      AutoResearch()
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

-- Vehicle
local Vehicle = Window:MakeTab({
    Name = "Vehicle",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Vehicle:AddSection({
    Name = "Spawner"
})
Vehicle:AddDropdown({
    Name = "Select Vehicle To Spawn",
    Default = selectedVehicle,
    Options = {"Bike", "E-Bike", "Quad", "Sedan", "Pickup", "Van", "Container", "Tank"},
    Callback = function(value)
      selectedVehicle = value
    end    
})
Vehicle:AddButton({
    Name = "Spawn Vehicle",
    Callback = function()
            VehicleSpawn()
    end
})

Menu:AddLabel("Instagram: _moligrafi_")

OrionLib:Init()