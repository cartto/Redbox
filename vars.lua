local vars = {  }
lplr = game.Players.LocalPlayer
plr = game.Players
Character = lplr.Character
Mouse =  lplr:GetMouse().KeyDown

function getPlrs()
    for k, v in next, plr:GetPlayers() do
        return v
    end
end
