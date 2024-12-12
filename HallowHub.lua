-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/HallowHub.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | No Game Dettected",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Marc",
   Theme = "Amethyst"
})

-- Teleport
local selectedGame = "The Upgrade Tree Of Tree"
function TeleportToGame(placeId)
    local teleportService = game:GetService("TeleportService")
    local success, errorMessage = pcall(function()
        teleportService:Teleport(placeId, game.Players.LocalPlayer)
    end)
end

-- Lista de Place IDs correspondentes aos jogos
local gamePlaceIds = {
    ["The Upgrade Tree Of Tree"] = 16148053600,
    ["Everything Upgrade Tree"] = 122809141833750,
    ["Snow Plow Simulator"] = 11701792069,
    ["Farm for Fun! 🌾"] = 6598746935
}

-- Menu
local Menu = Window:CreateTab("Credits", "info")
local Section = Menu:CreateSection("Creator")
local Label = Menu:CreateLabel("Discord: moligrafi", "at-sign")
local Label = Menu:CreateLabel("You can contact me to suggest something or even to ask for a game script")


-- Games
local Games = Window:CreateTab("Supported Games", "gamepad-2")
local Section = Games:CreateSection("Join game system")
local Label = Games:CreateLabel("Here are all the supported games in this script <3", "smile")
local Dropdown = Games:CreateDropdown({
   Name = "Select Game to Join",
   Options = {"The Upgrade Tree Of Tree", "Everything Upgrade Tree", "Snow Plow Simulator", "Farm for Fun! 🌾"},
   CurrentOption = {"Choose one"},
   MultipleOptions = false,
   Callback = function(Options)
   		selectedGame = CurrentOption
   end,
})
local Button = Games:CreateButton({
   Name = "Teleport to selected game",
   Callback = function()
        local placeId = gamePlaceIds[selectedGame]
        if placeId then
            TeleportToGame(placeId)
        end
    end,
})