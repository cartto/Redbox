local console = {   }

function console.print(x)
    rconsoleprint(x)
end

function console.info(x)
    rconsoleinfo(x)
end

function console.warn(x)
    rconsolewarn(x)
end
function console.clr()
    rconsoleclear()
end

function console.input()
    rconsoleinput()
end

return console
