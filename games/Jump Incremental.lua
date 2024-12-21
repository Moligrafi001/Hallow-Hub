-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/games/Jump%20Incremental.lua",true))()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Hallow Hub | Jump Incremental",
   Icon = 17091459839,
   LoadingTitle = "Hallow Hub",
   LoadingSubtitle = "By Moligrafi",
   Theme = "Amethyst"
})

-- Valores
_G.GetJump = false
_G.GetMoney = false
_G.AutoBuy = false

-- Funções
local function Getsiys()
	while _G.GetJump == true do
		game:GetService("ReplicatedStorage").JumpEvent:FireServer()
		wait(0.01)
	end
	while _G.GetMoney == true do
		local args = {
    [1] = Vector3.new(12.850000381469727, 1.9500000476837158, -24)
		}

		game:GetService("ReplicatedStorage").CashPileCollected:FireServer(unpack(args))
		wait(0.01)
	end
	while _G.AutoBuy == true do
		for numero = 1, 30 do
			local final = "n" .. numero
			game:GetService("ReplicatedStorage").PurchaseEvent:FireServer(final)
		end
		wait(1)
	end
end

-- Menu
local Menu = Window:CreateTab("Main", "home")
local Section = Menu:CreateSection("Auto Farm")
local Toggle =  Menu:CreateToggle({
   Name = "Get Money",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GetMoney = Value
   	Getsiys()
   end,
})
local Toggle =  Menu:CreateToggle({
   Name = "Get Jumps",
   CurrentValue = false,
   Callback = function(Value)
   	_G.GetJump = Value
   	Getsiys()
   end,
})
local Button = Menu:CreateButton({
   Name = "Inf Food",
   Callback = function()
   	local args = {
    [1] = {
        ["rewardType"] = "Food",
        ["tier"] = 1,
        ["amount"] = math.huge
    }
		}

		game:GetService("ReplicatedStorage").SpawnGiftEvent:FireServer(unpack(args))
    end,
})
local Section = Menu:CreateSection("Upgrade")
local Toggle =  Menu:CreateToggle({
   Name = "Auto Buy Upgrades",
   CurrentValue = false,
   Callback = function(Value)
   	_G.AutoBuy = Value
   	Getsiys()
   end,
})