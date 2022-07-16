loadstring(game:HttpGet("https://raw.githubusercontent.com/cartto/Redbox/main/import.func", true))()

local init = import("init.lua")
local vars = import("imports/vars.lua")

local Cmds = {...}

function Cmds.Add(name, callback)
    Cmds[name:lower()] = callback(vars.lplr)
end

function Cmds.Run(name)
    if Cmds[name:lower()] then
        Cmds[name]()
    else
        return false
    end
end

function Cmds.Chat()
    vars.ChatEvent:Connect(function(msg)
        if Cmds[msg] then
            Cmds.Run(msg)
        end
    end)
end

return Cmds
