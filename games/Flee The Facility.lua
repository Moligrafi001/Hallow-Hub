-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Flee%20The%20Facility.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Hallow Hub | Flee The Facility",
    HidePremium = false,
    IntroText = "Hallow Hub",
    SaveConfig = false,
    ConfigFolder = "Flee The Facility"
})
OrionLib:MakeNotification({
    Name = "Última atualização - 06/04/2024",
    Content = "Este script pode estar desatualizado devido a possíveis atualizações do jogo.",
    Image = "rbxassetid://4483345998",
    Time = 9
})

-- Locals
local character = game.Players.LocalPlayer.character
local humanoid = character
local rotationSpeed = 64
local userInputService = game:GetService("UserInputService")
local disconnectIJ = nil

-- Fullbright System
_G.FB = false
function FB()
    while _G.FB do
        game:GetService("Lighting").Brightness = 2
        game:GetService("Lighting").ClockTime = 14
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        wait(0.01)
    end
    game:GetService("Lighting").Brightness = 1
    game:GetService("Lighting").ClockTime = 14
    game:GetService("Lighting").FogEnd = 10000000
    game:GetService("Lighting").GlobalShadows = true
    game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(200, 200, 200)
end

-- No Clip System
_G.NC = false
function NC()
    while _G.NC == true do
        for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                if _G.NC then
                    part.CanCollide = false
                else
                    part.CanCollide = true
                end
            end
        end
        wait(0.1)
    end
end

-- Anti Slow System
_G.AS = false
function AS()
    while _G.AS do
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                if humanoid.WalkSpeed < 16 then
                    humanoid.WalkSpeed = 16
                end
            end
        end
        wait(0.01)
    end
end

-- Spin System
_G.SP = false
function SP()
    while _G.SP do
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(rotationSpeed), 0)
            end
        end
        wait(0.01)
    end
end

-- Fly System
_G.FY = false
function FY()
    local player = game.Players.LocalPlayer
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

    while _G.FY and player.Character and humanoid do
        humanoid.PlatformStand = false
        humanoid.AutoRotate = false
        humanoid.AutoRotateSpeed = 0
        humanoid:Move(Vector3.new(0, 1, 0))
        wait(0.1)
    end
end

-- Inf Jump System
_G.IJ = false
local function onJumpRequest()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end
function IJ()
    if _G.IJ then
        disconnectIJ = userInputService.JumpRequest:Connect(onJumpRequest)
    else
        if disconnectIJ then
            disconnectIJ:Disconnect()
            disconnectIJ = nil
        end
    end
end

-- Invade Match System
local function TeleportToCoordinates()
    if character then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = CFrame.new(124.5, 25.99999857, 138.5)
        game.Workspace.CurrentCamera.CFrame = CFrame.new(124.5, 4.99999857, 138.5, -0.351053178, 0, 0.936355531, 0, 1, 0, -0.936355531, 0, -0.351053178)
    end
end

-- Menu
local Menu = Window:MakeTab({
	Name = "Menu",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Menu:AddSection({
	Name = "·-–— Tools —–-·"
})
Menu:AddToggle({
    Name = "Anti Slow",
    Default = false,
    Callback = function(Value)
        _G.AS = Value
        AS()
    end    
})
Menu:AddToggle({
	Name = "Anti PC Error",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
Menu:AddToggle({
	Name = "Fullbright",
	Default = false,
	Callback = function(Value)
        _G.FB = Value
        FB()
	end    
})
local Section = Menu:AddSection({
	Name = "·-–— ESP —–-·"
})
Menu:AddToggle({
	Name = "Player ESP",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
Menu:AddToggle({
	Name = "Computer ESP",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

-- Player
local Self = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Self:AddSection({
	Name = "·-–— Movement —–-·"
})
_G.ChangeWalkSpeed = false
local walkSpeed = 16

function WalkSpeedLoop()
    while _G.ChangeWalkSpeed do
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = walkSpeed
        wait(0.1)
    end
end
Self:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "",
    Callback = function(Value)
        walkSpeed = Value
    end    
})
Self:AddToggle({
    Name = "Change Walk Speed",
    Default = false,
    Callback = function(Value)
        _G.ChangeWalkSpeed = Value
        if not Value then
            local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.WalkSpeed > 16 then
                humanoid.WalkSpeed = 16
            end
        else
            WalkSpeedLoop()
        end
    end    
})
Self:AddSlider({
	Name = "Jump High",
	Min = 0,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		print(Value)
	end    
})
Self:AddToggle({
	Name = "Change Jump High",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
local Section = Self:AddSection({
	Name = "·-–— More —–-·"
})
Self:AddToggle({
	Name = "Inf Jump",
	Default = false,
	Callback = function(Value)
        _G.IJ = Value
        IJ()
	end    
})
Self:AddToggle({
	Name = "No Clip",
	Default = false,
	Callback = function(Value)
        _G.NC = Value
        NC()
	end    
})
Self:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(Value)
				_G.FY = Value
				NC()
	end    
})

-- Misc
local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Misc:AddSection({
	Name = "·-–— Fun —–-·"
})
Misc:AddButton({
	Name = "Invade match!",
	Callback = function()
        TeleportToCoordinates()
    end
})
Misc:AddButton({
	Name = "Chat Spy",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/ChatSpy.lua",true))()
    end
})
Misc:AddToggle({
    Name = "Spin",
    Default = false,
    Callback = function(Value)
        _G.SP = Value
        SP()
    end    
})

OrionLib:Init()