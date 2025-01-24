pcall(function()
  local function ServerHop()
    local httprest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if not httprest then
      warn("HTTP request method not available.")
      return
    end
    local Servers = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local Next, Server = nil, nil
    local function ListServers(cursor)
      local url = Servers .. ((cursor and "&cursor=" .. cursor) or "")
      local success, Raw = pcall(game.HttpGet, game, url)
      if success then
        return game:GetService("HttpService"):JSONDecode(Raw)
      else
        warn("Failed to fetch servers:", Raw)
        return nil
      end
    end
    repeat
      local ServersData = ListServers(Next)
      if ServersData and ServersData.data and #ServersData.data > 0 then
        Server = ServersData.data[math.random(1, #ServersData.data)]
        Next = ServersData.nextPageCursor
      else
        break
      end
    until Server and Server.playing < Server.maxPlayers and Server.id ~= game.JobId
    if Server then
      game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Server.id, game.Players.LocalPlayer)
    else
      warn("No suitable server found.")
    end
  end
  while true do
    for _, v in pairs(workspace.Chest:GetChildren()) do
      if not v then
        ServerHop()
      end
    end
    wait()
  end
end)