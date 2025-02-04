local function TestCode(caminho)
  local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
  local response = httrest({
    Url = "https://hallow-hub.squareweb.app/api/load/" .. game:GetService("HttpService"):UrlEncode(caminho),
    Method = "GET",
    Headers = {
      ["pass"] = "SuperSecretHallowHubKey090609"
    }
  })
  loadstring(game:GetService("HttpService"):JSONDecode(response.Body)["script"])()
end

TestCode("Key System.lua")