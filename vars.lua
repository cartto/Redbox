local game = {  }
game.lplr = game.Players.LocalPlayer
game.plr = game.Players
game.Character = lplr.Character
game.Mouse =  lplr:GetMouse().KeyDown

function game.getPlrs()
    for k, v in next, game.plr:GetPlayers() do
        return v
    end
end
--i hope
return game
