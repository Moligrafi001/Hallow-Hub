-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Moligrafi001/Hallow-Hub/main/extra/Auth.lua",true))()
local Auth = {}

-- Função de verificação de usuário
function Auth:Check()
    -- Lógica para checar, pode ser qualquer condição.
    if game.Players.LocalPlayer.Name == "HallowHub" then
        return true
    else
        return false
    end
end

return Auth