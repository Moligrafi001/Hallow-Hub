local function SendMessage(url, message)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end

local function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
end


--Examples 
local url = "https://discord.com/api/webhooks/1321969045775450132/vuoR9QGIi_iGixPCx79sqi2W9Chu1YOCpsDTu7yxNm99dlMWyCu3x-QoLOYsERT8F7uC"


local Gamepado = "__false__"
local Toque = "__false__"
local Teclado = "__false__"

if game:GetService("UserInputService").TouchEnabled == true then
	Toque = "__true__"
end
if game:GetService("UserInputService").KeyboardEnabled == true then
	Teclado = "__true__"
end
if game:GetService("UserInputService").GamepadEnabled == true then
	Gamepado = "__true__"
end

local embed = {
    ["title"] = "Script Executed!",
    ["description"] = "Check the infos below!\n‎ ",
    ["color"] = 16743680,
    ["fields"] = {
        {
            ["name"] = "**Game Info**",
            ["value"] = "**Game Name**: __" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "__\n**Game ID**: __" .. game.PlaceId .. "__\n‎ "
        },
        {
            ["name"] = "**Server Info**",
            ["value"] = "**Job ID**: __" .. game.JobId .. "__\n**Link**: __No Link Yet__\n‎ "
        },
        {
            ["name"] = "**User Info**",
            ["value"] = "**Username**: @__" .. game.Players.LocalPlayer.Name .. "__\n**Display**: __" .. game.Players.LocalPlayer.DisplayName .. "__\n**User ID**: __" .. game.Players.LocalPlayer.UserId .. "__\n**Link**: https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile" .. "\n\n**TouchScreen**: " .. Toque .. "\n**Keyboard**: " .. Teclado .. "\n**Gamepad**: " .. Gamepado
        }
    },
    ["footer"] = {
        ["text"] = "Amazing!! Isn't it? :D"
    }
}
SendMessageEMBED(url, embed)