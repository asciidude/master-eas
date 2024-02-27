if not Config.disableSupportMessage then
    local Date = os.date("%b %d")
    if date == 'Apr 1' then
        print('^1________________________________')
        print('^1|     ^4Welcome to MasterEAS     ^1|')
        print('^1|     ^1--------------------     ^1|')
        print('^1|   ^7For support on this        ^1|')
        print('^1| ^7plugin, please use GitHub    ^1|')
        print('^1| ^7issues.                      ^1|')
        print('^1|                              ^1|')
        print('^1|       ^5bit.ly/mastereas       ^1|')
        print('^1|                              ^1|')
        print('^1|   ^3Disable this message via   ^1|')
        print('^1| ^3MasterEAS config. Thank you  ^1|')
        print('^1| ^3for choosing MasterEAS!      ^1|')
        print('^1|                              ^1|')
        print('^1| ^7Created with ^1:3 ^7by asciidude ^1|')
        print('^1--------------------------------^7')
    else
        print('^1________________________________')
        print('^1|     ^4Welcome to MasterEAS     ^1|')
        print('^1|     ^1--------------------     ^1|')
        print('^1|   ^7For support on this        ^1|')
        print('^1| ^7plugin, please use GitHub    ^1|')
        print('^1| ^7issues.                      ^1|')
        print('^1|                              ^1|')
        print('^1|       ^5bit.ly/mastereas       ^1|')
        print('^1|                              ^1|')
        print('^1|   ^3Disable this message via   ^1|')
        print('^1| ^3MasterEAS config. Thank you  ^1|')
        print('^1| ^3for choosing MasterEAS!      ^1|')
        print('^1|                              ^1|')
        print('^1| ^7Created with ^1<3 ^7by asciidude ^1|')
        print('^1--------------------------------^7')
    end
end

-- Client-sided logging
AddEventHandler('LogToClient', function(text)
	local gt = os.date('*t')
	local f,err = io.open("serverlog.log","a")
	if not f then return print(err) end
	local h = gt['hour'] if h < 10 then h = "0"..h end
	local m = gt['min'] if m < 10 then m = "0"..m end
	local s = gt['sec'] if s < 10 then s = "0"..s end
	local formattedlog = string.format("[%s:%s:%s] %s \n",h,m,s,text)
	f:write(formattedlog)
	f:close()
end)

-- Command handling
RegisterCommand(Config.commandName, function(source, args, rawCommand)
    local switch = {
        ['ping'] = function() -- * mastereas.ping
            if IsPlayerAceAllowed(source, 'mastereas.ping') then
                TriggerClientEvent('ShowNotification', source, '~b~Pong!')
            else
                TriggerClientEvent('ShowNotification', source, Config.disallowMessage)
            end
        end,
        ['create'] = function() -- * mastereas.create
            if IsPlayerAceAllowed(source, 'mastereas.create') then
                TriggerClientEvent('ShowMenu', source)
            else
                TriggerClientEvent('ShowNotification', source, Config.disallowMessage)
            end
        end,
        ['end'] = function() -- * mastereas.end
            if IsPlayerAceAllowed(source, 'mastereas.end') then
                TriggerClientEvent('ShowMenu', source)
            else
                TriggerClientEvent('ShowNotification', source, Config.disallowMessage)
            end
        end,
        ['show'] = function()
            TriggerClientEvent('ShowEASAlert', source)
        end,
        ['default'] = function()
            TriggerClientEvent('ShowNotification', source, Config.incorrectUsageMessage)
        end
    }

    if switch[args[1]] then
        switch[args[1]]()
    else
        switch['default']()
    end
end)