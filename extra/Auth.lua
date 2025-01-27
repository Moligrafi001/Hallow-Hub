local Auth = {}

local Config = {}

function Auth.Initialize(config)
    Config = config or {}
    print("Configurações aplicadas!")
end

function Auth.Check()
  if Config.Webhook == true then
    print("Webhook está ativado!")
    return true
  elseif Config.Webhook == false then
    print("Webhook está desativado!")
    return false
  end
end

return Auth