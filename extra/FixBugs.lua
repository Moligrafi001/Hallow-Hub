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

local embed = {
    ["title"] = "Script Executed!",
    ["description"] = "**Game Name**: __" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "__\n**Game ID**: __" .. game.PlaceId .. ",
    ["color"] = 16743680,
    ["fields"] = {
        {
            ["name"] = "**Server Info**",
            ["value"] = "**Job ID**: " .. game.JobId .. "__\n**Link**: __No Link Yet__"
        },
        {
            ["name"] = "**User Info**",
            ["value"] = "**Username**: __" .. game.Players.LocalPlayer.Name .. "__\n**Display**: __" .. game.Players.LocalPlayer.DisplayName .. "__\n**User ID**: __" .. game.Players.LocalPlayer.UserId .. "__\n**Link**: https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile"
        }
    },
    ["footer"] = {
        ["text"] = "Amazing!! Isn't it? :D"
    }
}
SendMessageEMBED(url, embed)