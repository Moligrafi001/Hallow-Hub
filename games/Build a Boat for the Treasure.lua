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

Menu:Toggle("Collect Candies", 
	false,
	function(Value)
	_G.CandyFarm = Value
	CandyFarm()
	wait(3)
	game:GetService("Players").LocalPlayer.Character.Head:Destroy()
end)

Menu:Label("t.me/HallowHub")