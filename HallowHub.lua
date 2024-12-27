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
    ["Farm for Fun! 🌾"] = 6598746935,
    ["⚔️ Slash Mobs Simulator"] = 81257648942232,
    ["Rune Inc"] = 101162558216961,
    ["Make and Sell Cars"] = 109819539837829,
    ["Find The Buttons! 🔎🔴"] = 91314495602934,
    ["🥊Punch Monsters!"] = 8034886758,
    ["Cash Incremental"] = 129159449618378,
    ["Legends Of Speed"] = 3101667897,
    ["Find The Buttons!"] = 112730892056697,
    ["Clicking Quest!"] = 79274333046533,
    ["Growth Incremental"] = 112808176368279,
    ["Find The Button"] = 87643681021528,
    ["Snow Incremental Simulator"] = 138763709974342,
    ["Ultimate Upgrade Tree"] = 129503100059800,
    ["Jump Incremental"] = 98896743739347,
    ["Find Chicken Nuggets"] = 107400840408672,
    ["Find Buttons! 👀"] = 104584676217962,
    ["Vyasa"] = 12398408187,
    ["Computer Upgrade Tree"] = 18242944461,
    ["Swords Battle Simulator"] = 105628647191901,
    ["Dungeons of Doom"] = 77293138169730,
    ["Flee The Facility"] = 893973440,
    ["City Destroyer Simulator"] = 15148585624
}

-- Credits.
local Credits = Window:CreateTab("Credits", "info")
local Section = Credits:CreateSection("Creator")
local Label = Credits:CreateLabel("Discord: moligrafi", "at-sign")
local Section = Credits:CreateSection("Co-Dev")
local Label = Credits:CreateLabel("Discord: world_star_hacker", "at-sign")
local Section = Credits:CreateSection("Discord Server")
local Label = Credits:CreateLabel("discord.gg/AESCuek87s")
local Button = Credits:CreateButton({
   Name = "Copy Server Link",
   Callback = function()
       setclipboard("discord.gg/AESCuek87s")
       toclipboard("discord.gg/AESCuek87s")
    end,
})

-- Games
local Games = Window:CreateTab("Supported Games", "gamepad-2")
local Section = Games:CreateSection("Join game system")
local Label = Games:CreateLabel("Here are all the supported games in this script <3", "smile")
local Dropdown = Games:CreateDropdown({
   Name = "Select Game to Join",
   Options = {"The Upgrade Tree Of Tree", "Everything Upgrade Tree", "Snow Plow Simulator", "Farm for Fun! 🌾", "⚔️ Slash Mobs Simulator", "Rune Inc", "Make and Sell Cars", "Find The Buttons! 🔎🔴", "🥊Punch Monsters!", "Cash Incremental", "Legends Of Speed", "Find The Buttons!", "Clicking Quest!", "Growth Incremental", "Find The Button", "Snow Incremental Simulator", "Ultimate Upgrade Tree", "Jump Incremental", "Find Chicken Nuggets", "Find Buttons! 👀", "Vyasa", "Computer Upgrade Tree", "Swords Battle Simulator", "Dungeons of Doom", "Flee The Facility", "City Destroyer Simulator"},
   CurrentOption = {"Choose one"},
   MultipleOptions = false,
   Callback = function(Options)
   		selectedGame = Options[1]
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