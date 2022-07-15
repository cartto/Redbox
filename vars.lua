local lplr = game.Players.LocalPlayer
local plr = game.Players
local Character = lplr.Character
local Mouse =  lplr:GetMouse().KeyDown

function getPlrs()
    for k, v in next, plr:GetPlayers() do
        return v
    end
end
