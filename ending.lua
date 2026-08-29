function ending() 
    if intro_num <= 0 then
        return
    end
    moving_mountian = -35
    if intro_num < 90 then
        moving_mountian = moving_mountian +   intro_num
        love.graphics.setFont(gameFont)
        if intro_num < 3 then
            current_colourr = 0
            current_colourb = 0
            current_coloury = 0
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 3 then
            current_colourr = 0.2
            current_colourb = 0.2
            current_coloury = 0.2
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 9 then
            current_colourr = 0.5
            current_colourb = 0.5
            current_coloury = 0.5
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 15 then
            current_colourr = 0.7
            current_colourb = 0.7
            current_coloury = 0.7
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 21 then
            current_colourr = 0.9
            current_colourb = 0.9
            current_coloury = 0.9
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        end
        love.graphics.print("                     ___\n                    /   \\              /'\\       _\n\\_..           /'.,/     \\_         .,'   \\     / \\_\n    \\         /            \\      _/       \\_  /    \\     _\n     \\__,.   /              \\    /           \\/.,   _|  _/ \\\n          \\_/                \\  /',.,''\\      \\_ \\_/  \\/    \\\n                           _  \\/   /    ',../',.\\    _/      \\\n             /           _/%\\  \\  /    |         \\  /.,/'\\   _\\\n           _/           /%%%%\\  \\_     |          \\/      \\_/  \\\n          /      \\     |%%%%%%|   \\__   \\          \\_       \\   \\_\n                  \\   /%%%%%%%|      \\   \\           \\       \\    \\\n                   \\  |%%%%%%%%\\      \\___            \\_      \\_   \\\n                    \\|%%%%%%%%%%|____.'  /\\_            \\       \\   \\_\n                    /'.,___________...,,'   \\            \\   \\   |     \\\n                   /       \\          |      \\    |__     \\   \\_  \\     \\\n",moving_mountian,25)
        if intro_num > 30 then
            dialouge_talk = true
            dialouge_num = 22
            love.graphics.setFont(gameFont)
            if intro_num == 75 then
                current_colourr = 0.7
                current_colourb = 0.7
                current_coloury = 0.7
                love.graphics.setColor(current_colourr,current_colourb,current_coloury)
            elseif intro_num == 81 then
                current_colourr = 0.5
                current_colourb = 0.5
                current_coloury = 0.5
                love.graphics.setColor(current_colourr,current_colourb,current_coloury)
            elseif intro_num >= 88 then
                current_colourr = 0.2
                current_colourb = 0.2
                current_coloury = 0.2
                love.graphics.setColor(current_colourr,current_colourb,current_coloury)
                    dialouge_talk = false
                    dialouge_switch = true
                    dialouge_num = 2
            end     
        end  
    elseif intro_num < 190 then
        moving_mountian = moving_mountian + intro_num
        dialouge_talk = true
        dialouge_num = 23
        love.graphics.setFont(gameFont)
        if intro_num < 93 then
            current_colourr = 0
            current_colourb = 0
            current_coloury = 0
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 93 then
            current_colourr = 0.2
            current_colourb = 0.2
            current_coloury = 0.2
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 99 then
            current_colourr = 0.5
            current_colourb = 0.5
            current_coloury = 0.5
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 105 then
            current_colourr = 0.7
            current_colourb = 0.7
            current_coloury = 0.7
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 111 then
            current_colourr = 0.9
            current_colourb = 0.9
            current_coloury = 0.9
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 150 then
            current_colourr = 0.7
            current_colourb = 0.7
            current_coloury = 0.7
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 160 then
            current_colourr = 0.5
            current_colourb = 0.5
            current_coloury = 0.5
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 170 then
            current_colourr = 0.2
            current_colourb = 0.2
            current_coloury = 0.2
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        elseif intro_num == 180 then
            current_colourr = 0
            current_colourb = 0
            current_coloury = 0
            love.graphics.setColor(current_colourr,current_colourb,current_coloury)
        end
        local ascii_art = "   .+.\n" ..
                        " .'. .'.\n" ..
                        "/   |   \\\n" ..
                        "|  / \\  |\n" ..
                        " \\/___\\/\n"

        local font = love.graphics.getFont()

        local max_line_width = 0
        for line in ascii_art:gmatch("[^\r\n]+") do
            local line_width = font:getWidth(line)
            if line_width > max_line_width then
                max_line_width = line_width
            end
        end

        local screen_width = love.graphics.getWidth()
        local center_x = (screen_width - max_line_width) / 2
        local y_position = 175

        love.graphics.setColor(current_colourr, current_colourb, current_coloury)
        love.graphics.print(ascii_art, center_x, y_position)
    elseif intro_num < 240 then
        dialouge_talk = false
        current_colourr = 1
        current_colourb = 1
        current_coloury = 1
        local ascii_art = " _____         _     _____   __    ___            _  _\n" ..
                        "/  __ \\       | |   /  _  \\ / _|  / _ \\          (_||_)\n" ..
                        "| /  \\/  __ _ | |_  | | | || |_  / /_\\ \\ ___  ___ _  _ \n" ..
                        "| |     / _` || __| | | | ||  _| |  _  |/ __|/ __| || |\n" ..
                        "| \\__/\\\\ (_| || |_  | |_| || |   | | | |\\__ \\|(__| || |\n" ..
                        " \\____/ \\__,_|\\__|  \\____ /|_|   \\_| |_//___/\\___|_||_|\n\n\n\n\n\n\n\n" ..
                        "       		  )\\._.,--....,'``.\n" ..
                        "        		/,   _.. \\   _\\  (`._ ,.\n" ..
                        "       		`._.-(,_..'--(,_..'`-.;.'"

        local font = love.graphics.getFont()

        local max_line_width = 0
        for line in ascii_art:gmatch("[^\r\n]+") do
            local line_width = font:getWidth(line)
            if line_width > max_line_width then
                max_line_width = line_width
            end
        end

        local screen_width = love.graphics.getWidth()
        local center_x = (screen_width - max_line_width) / 2
        local y_position = 25

        love.graphics.setColor(current_colourr, current_colourb, current_coloury)
        love.graphics.print(ascii_art, center_x, y_position)
    end

    if intro_num >= 240 then
        love.event.quit()
    end
end