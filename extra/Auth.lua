-- Auth.lua

local Auth = {}

Auth.Config = {
    Webhook = false,
}

function Auth:Initialize(config)
    for key, value in pairs(config) do
        self.Config[key] = value
    end
    print("Configurações aplicadas!")
end

function Auth:Check()
    if self.Config.Webhook then
        print("Webhook está habilitado.")
    else
        print("Webhook está desabilitado.")
    end
end

return Auth