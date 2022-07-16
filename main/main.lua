loadstring(game:HttpGet("https://raw.githubusercontent.com/cartto/Redbox/main/import.func", true))()

local init = import("init.lua")
local vars = import("imports/vars.lua")

local Cmds = {...}

function Cmds.Add(name, callback)
    Cmds[name:lower()] = callback
end


function Cmds.Run()
    vars.ChatEvent:Connect(function(msg)
        getgenv().msgEvent = msg
        if Cmds[msg] then
            Cmds[msg](msg)
        end
    end)
end
