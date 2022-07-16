loadstring(game:HttpGet("https://raw.githubusercontent.com/cartto/Redbox/main/import.func", true))()

local console = import("imports/console.lua")
local vars = import("imports/vars.lua")

console.print("@@CYAN@@")
console.print("Welcome "..vars.lplr.Name.." RedBox loaded sucessfully\n")
console.info("Script made by carto#8954")
console.info("Type help in this prompt to get a list of commands")

Http = game:GetService("HttpService")

getgenv().loopInput = true

coroutine.wrap(function()
    repeat wait() until isfile("Commands.redbox")
        print("making")
        while getgenv().loopInput do wait()    
        if console.input() == "help" then
                Http = game:GetService("HttpService")
                a=Http:JSONDecode(readfile("Commands.redbox"))
                for i,v in next,a do
                console.print(i..": "..v)
            end     
        end
    end
end)()
