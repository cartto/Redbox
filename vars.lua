local vars = {  }
vars.lplr = game.Players.LocalPlayer
vars.plr = game.Players
vars.Character = vars.lplr.Character
vars.Mouse =  vars.lplr:GetMouse().KeyDown

function vars.getPlrs()
    for k, v in next, vars.plr:GetPlayers() do
        return v
    end
end
--i hope
return vars
