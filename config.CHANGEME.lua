--[[
    Thank you for installing MasterEAS—the standalone EmergencyAlertSystem plugin.

    Configuration for this plugin should be pretty simple, and everything is described step-by-step.

    ? | Dependencies:
    ! | You can manually change dependency names in the fxmanifest.lua file, but I don't recommend it as you can
    ! | mess things up if you don't know what you're doing.
    * | Badger_Discord_API (if using Discord intergration, ignore if otherwise)
]]--

Config = {} -- Don't touch this

Config.disableSupportMessage = false -- Change to "true" to disable the message printed in console with a support link

-- ? | Give player permission to open menu with "mastereas.menu"

--[[
    Subcommand meanings (+ permissions):
    * create (mastereas.create): Create/replace an EAS alert. If alert is active, it will replace the alert and re-open message w/ sound
    * end (mastereas.end): End active EAS alert
    * show: Re-open active alert if any, otherwise "No active alert" is shown
]]--

Config.commandName = 'eas' -- Parent command to the following subcommands: ping, menu, show
Config.commandDescription = 'Open the MasterEAS menu' -- Description for command
Config.disallowMessage = '⛔ ~o~Sorry, you are not allowed to use this MasterEAS function' -- Client message recieved when used but not allowed

-- ? | The following is incorrect usage messages with a proceeding comment with the actual command that must be typed.
-- ? | These messages will be shown as alert boxes above the map, please keep that in mind with configuration.
-- ! | Also, while you can configure these, I recommend against it if you plan on changing the command usage.
-- ium_Command = Improper Usage Message for Command

Config.ium_Primary = '⛔ ~o~Incorrect usage, use the following syntax: ~w~/eas [create, end, show]' -- /eas
Config.ium_Start = '⛔ ~o~Incorrect usage, use the following syntax: ~w~/eas create "[location]" "[message]" (quotations required)' -- /eas start
-- No usage for /eas end aside from original command
-- No usage for /eas show aside from original command

-- ^ | This is setup this way in case more commands are needed to be added in the future and for configurability's sake.

Config.showStatus = true -- Show status at top-center of screen
Config.statusMessage = '~r~EAS Alert Active ⚠ {alert} ⚠ {location}' -- Status message to show, {alert} = alert message, {location} = area alert is active in

-- ? Discord Intergration is another way to notify users, and does it server-wide. It will also notify them of the EAS alert ending
Config.discordIntergration = true -- Use Discord intergration?
Config.channelID = 000000000000000000 -- The channel ID of the alert channel
Config.roleID = 'none' -- The alert role ID to mention, change to 'everyone' to mention everyone, or 'none' to not mention anyone

-- Messages sent to Discord on starts, endings, and updates of EAS alerts, {alert} = alert message, {location} = area alert is active in, \n = new line
Config.messageStart_Discord = ':rotating_light: **EAS Alert Created**\n:warning: {alert}\n:pushpin: {location}'
Config.messageUpdate_Discord = ':arrows_clockwise: **EAS Alert Updated**\n:warning: {alert}\n:pushpin: {location}'
Config.messageEnd_Discord = ':white_check_mark: **The EAS alert is now inactive, you may resume roleplay as normal.**'