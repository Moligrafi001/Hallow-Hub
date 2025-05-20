local luaujson = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/luaujson/main/library.lua"))()

luaujson:Start()

local function LoadScript(path)
  loadstring(luaujson:Parse({
    Url = "https://hallow-hub.squareweb.app/api/load/" .. game:GetService("HttpService"):UrlEncode(path),
    Method = "GET",
    Headers = {
      ["pass"] = "SuperSecretHallowHubKey090609"
    }
  }, "script"))()
end

LoadScript("Loader.lua")