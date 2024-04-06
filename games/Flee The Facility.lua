-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Flee%20The%20Facility.lua",true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
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

-- Valores
_G.FB = false
_G.NC = false
_G.IJ = false
_G.DisconnectIJ = nil

-- Funções
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

function NC()
    while _G.NC do
        for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
        wait(0.1)
    end
end

-- Função para controlar o Infinite Jump
local function IJ()
    local function onJumpRequest()
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end

    local userInputService = game:GetService("UserInputService")
    _G.DisconnectIJ = userInputService.JumpRequest:Connect(onJumpRequest)
end

-- Menu
local Menu = Window:MakeTab({
    Name = "Menu",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Menu:AddSection({
    Name = "OP Script"
})
Menu:AddButton({
    Name = "FTFHAX",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LeviTheOtaku/roblox-scripts/main/FTFHAX.lua",true))()
        OrionLib:MakeNotification({
            Name = "FTFHAX executado!",
            Content = "Ação irreversível, evite executar mais de uma vez.",
            Image = "rbxassetid://4483345998",
            Time = 9
        })
    end
})
Menu:AddButton({
    Name = "Chat Spy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/ChatSpy.lua",true))()
        OrionLib:MakeNotification({
            Name = "Chat Spy executado!",
            Content = "Ação irreversível, evite executar mais de uma vez.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- Misc
local Misc = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Section = Misc:AddSection({
    Name = "Useful"
})
Misc:AddToggle({
    Name = "Fullbright",
    Default = false,
    Callback = function(Value)
        _G.FB = Value
        FB()
    end
})
Misc:AddToggle({
    Name = "Inf Jump",
    Default = false,
    Callback = function(Value)
        _G.IJ = Value
        if Value then
            IJ()
        else
            if _G.DisconnectIJ then
                _G.DisconnectIJ:Disconnect()
                _G.DisconnectIJ = nil
            end
        end
    end
})
Misc:AddToggle({
    Name = "No Clip",
    Default = false,
    Callback = function(Value)
        _G.NC = Value
        NC()
    end
})

OrionLib:Init()