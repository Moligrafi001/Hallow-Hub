-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Ultimate%20Upgrade%20Tree.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Jump Incremental",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})


game:GetService("ReplicatedStorage").JumpEvent:FireServer()

local args = {
    [1] = {
        ["rewardType"] = "Food",
        ["tier"] = 1,
        ["amount"] = math.huge
    }
}

game:GetService("ReplicatedStorage").SpawnGiftEvent:FireServer(unpack(args))

while true do
for numero = 1, 30 do
local final = "n" .. numero
local args = {
    [1] = final
}

game:GetService("ReplicatedStorage").PurchaseEvent:FireServer(unpack(args))
end
wait(0.5)
end

while true do
local args = {
    [1] = Vector3.new(12.850000381469727, 1.9500000476837158, -24)
}

game:GetService("ReplicatedStorage").CashPileCollected:FireServer(unpack(args))
wait(0.01)
end
