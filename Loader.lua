local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:Popup({
  Title = "Which script would you like to try?",
  Icon = "triangle-alert",
  Content = "Hallow Hub will be discontinued on June 21, 2025.",
  Buttons = {
    {
      Title = "Load Hallow Hub [ Old ]",
      Icon = "bug",
      Callback = function()
        local luaujson = loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/luaujson/main/library.lua"))()
        luaujson:Start()
        local function LoadScript(path)
          loadstring(luaujson:Parse({
            Url = "https://hallow-hub.squareweb.app/api/load/" .. game:GetService("HttpService"):UrlEncode(path),
            Method = "GET",
            Headers = {
              ["pass"] = "PussyFuckerBitchWhyAreYouTryingToSkidThisMotherFuckerLolImagineSkiddingRobloxScriptsLmaoStupidAhhNoob"
            }
          }, "script"))()
        end
        LoadScript("Loader.lua")
      end,
      Variant = "Secondary"
    },
    {
      Title = "Load Triangulare [ New ]",
      Icon = "triangle",
      Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Triangulare/main/Loader.lua"))()
      end,
      Variant = "Primary"
    }
  }
})

WindUI:Notify({
  Title = "Execution Issue",
  Content = "If Hallow Hub fails to execute for you, consider trying Triangulare next time.",
  Duration = 9,
  Icon = "triangle-alert"
})
WindUI:Notify({
  Title = "Triangulare is better",
  Content = "All old scripts are being optimized and moved to Triangulare.",
  Duration = 9,
  Icon = "triangle-alert"
})