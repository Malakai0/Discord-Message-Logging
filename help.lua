io.write(
    "Welcome to Malakai's Discord Log Module help!"..
    "\n"..
    "What do you need help with?\n\n"
)
io.write(
    "1. Methods\n"..
    "2. Error Handling\n\nAnswer: "
)
local a2 = io.read()
if a2:sub(1) == "1" or a2:lower() == "methods" then
    io.write(
        "\nWhich method?\n"..
        "1. DM\n"..
        "2. Server\n"..
        "3. Delete\n\nAnswer: "
    )
    local a3 = io.read()
    if a3:sub(1) == "1" or a3:lower() == "dm" then
        io.write(
            "\nThe DM method is quite simple, it logs when someone dms the bot.\n"..
            "Here is an example: \n\n"..
            tostring(io.open('./examples/dm_example.txt'):read('*all'))..
            "\n\n"..
            "To understand that is not hard. You just need to know a bit of lua."
        )
    elseif a3:sub(1) == "2" or a3:lower() == "server" then
        io.write(
            "\nThe server method is simple as well as dm, though delete is a bit harder. Anyway, server logs when someone said something in a server, THERE IS A DIFFERENCE.\n"..
            "I am not that good with making people understand with words, so here's an example: \n\n"..
            tostring(io.open('./examples/server_example.txt'):read('*all'))..
            "\n\n"..
            "It's quite simple to understand... I think..."
        )
    elseif a3:sub(1) == "3" or a3:lower() == "delete" then
        io.write(
            "\nThe delete method is a TINY bit more tricky, but not really, it just uses more arguments.\n"..
            "Here's an example of using the DM usage of delete: \n\n"..
            tostring(io.open('./examples/delete_dm_example.txt'):read('*all'))..
            '\n\n'..
            "And this is the usage for Server message delete: \n\n"..
            tostring(io.open('./examples/delete_server_example.txt'):read('*all'))..
            '\n\n'..
            "This one just takes more arguments!"
        )
    else
        io.write("Invalid method!")
    end
elseif a2:sub(1) == "2" or a2:lower() == "error handling" then
    io.write(
        '\nWhat error are you getting?\n'..
        '1. Invalid method in function on line [line]\n'..
        '2. Other (I dont know any other error you would get.)\n\nAnswer: '
    )
    local a4 = io.read()
    if a4:sub(1) == "1" or a4:lower():sub(1,7) == "invalid" then
        io.write(
            "\nQuick note: NEVER use the log function outside a function that takes the 'message' parameter.\n"..
            "What you need to do is find the function on the line it says, and then look at every time you called log(), and see if you used an invalid method, or misspelled something."
        )
    elseif a4:sub(1) == "2" or a4:lower():sub(1,5) == "other" then
        io.write('\nDM me on Discord: Whomever#2286')
    else
        io.write('Invalid option!')
    end
else
    io.write('Invalid option!')
end

while true do
    do end --So you can actually read it.
end
