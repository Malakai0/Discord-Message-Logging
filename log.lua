local class = {}

function class.log(message, method, ...)
    local args = {...}
    if method == "dm" then
        print("[ "..message.author.name.." ] said: [ "..message.content.." ] in DMS")
    elseif method == "server" then
        print("[ "..message.author.name.." ] said: [ "..message.content.." ] in "..message.guild.name.."."..message.channel.name)
    elseif method == "delete" and args[1] == "server" then
        print("[ "..message.author.name.." ] deleted: [ "..message.content.." ] in "..message.guild.name.."."..message.channel.name)
    elseif method == "delete" and args[1] == "dm" then
        print("[ "..message.author.name.." ] deleted: [ "..message.content.." ] in DMS")
    else
        local tbl = {}
        debug.traceback():gsub(".", function(c) table.insert(tbl,c) end)
        repeat
            table.remove(tbl,1)
        until tbl[1] == "<"
        repeat
            table.remove(tbl,1)
        until tbl[1] == ":"
        table.remove(tbl,1)
        repeat
            table.remove(tbl,1)
        until tbl[1] == ":"
        table.remove(tbl,1)
        for i = 3,#tbl do
            table.remove(tbl, i)
        end
        print("Invalid method in function on line "..table.concat(tbl))
    end
end

return class
