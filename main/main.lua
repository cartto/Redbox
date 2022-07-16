loadstring(game:HttpGet("https://raw.githubusercontent.com/cartto/Redbox/main/import.func", true))()

local init = import("init.lua")
local vars = import("imports/vars.lua")

Cmds = {  }

function Cmds.RC(msg)
    local args = msg:split("\32")
    local name = table.remove(args, 1)
    local cmd = Cmds[name]
    if cmd then
        cmd(args)
    end
end

function Cmds.Run()
    vars.lplr.Chatted:Connect(Cnds.RC)
end

return Cmds
