-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Build%20a%20Boat%20for%20the%20Treasure.lua",true))()
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Lib/main/source.lua"))()
local Menu = lib:Window("BABFT | Auto Candy")

-- Candy Farm System
_G.CandyFarm = false
local function CandyFarm()
    while _G.CandyFarm == true do
        for i, v in pairs(workspace.Houses:GetChildren()) do
            firetouchinterest(v.Door.DoorInnerTouch, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
        end
        wait(1)
    end
    game:GetService("Players").LocalPlayer.Character.Head:Destroy()
end

-- Anti AFK System
_G.AntiAFK = false
local function AntiAFK()
    while _G.AntiAFK == true do
        for _, v in pairs(getconnections(plr.Idled)) do
            v:Disable()
        end
        wait(60)
    end
end

Menu:Toggle("Collect Candies", 
	false,
	function(Value)
	_G.CandyFarm = Value
	CandyFarm()
end)

Menu:Toggle("Anti AFK", 
	false,
	function(Value)
	_G.AntiAFK = Value
	AntiAFK()
end)

Menu:Label("Thank You!")