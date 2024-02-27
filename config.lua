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
Config.incorrectUsageMessage = '⛔ ~o~Incorrect usage, please correct your command: ~w~/eas [create, end, show]' -- Client message recieved when MasterEAS has been improperly used

Config.showStatus = true -- Show status at top-center of screen
Config.statusMessage = '~r~EAS Alert Active ⚠ {alert} ⚠ {location}' -- Status message to show, {alert} = alert message, {location} = area alert is active in

-- ? Discord Intergration is another way to notify users, and does it server-wide. It will also notify them of the EAS alert ending
Config.discordIntergration = true -- Use Discord intergration?
Config.channelID = 000000000000000000 -- The channel ID of the alert channel
Config.roleID = 'none' -- The alert role ID to mention, change to 'everyone' to mention everyone, or 'none' to not mention anyone