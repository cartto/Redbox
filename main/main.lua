loadstring(game:HttpGet("https://raw.githubusercontent.com/cartto/Redbox/main/import.func", true))()

local init = import("init.lua")
local vars = import("imports/vars.lua")

local Cmds = {...}

function Cmds.Add(name, callback)
    Cmds[name:lower()] = callback(vars.lplr)
end

function Cmds.Run(name, callback)
    if Cmds[name:lower()] then
        Cmds[name]()
    else
        return false
    end
end

return Cmds
