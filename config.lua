--[[
    Thank you for installing MasterEAS—the standalone EmergencyAlertSystem plugin.

    Configuration for this plugin should be pretty simple, and everything is described step-by-step.

    ? | Dependencies:
    ! | You can manually change dependency names in the fxmanifest.lua file, but I don't recommend it as you can
    ! | mess things up if you don't know what you're doing.
    * | NativeUILua-Reloaded
    * | Badger_Discord_API (if using Discord intergration, ignore if otherwise)
]]--

Config = {} -- Don't touch this

Config.commandName = 'mastereas' -- The command name for the EAS configuration/start menu to be shown.
Config.commandDescription = 'Open the MasterEAS menu' -- Description for command

Config.restrictCommand = true -- Restrict above command to `mastereas.openmenu` permission
Config.disallowMessage = '⛔ ~r~Sorry, you are not allowed to open the MasterEAS menu.' -- Client message recieved when used but not allowed

Config.showStatus = true -- Show status at top-center of screen
Config.statusMessage = '~r~EAS Alert Active ⚠ {alert} ⚠ {location}' -- Status message to show, {alert} = alert message, {location} = area alert is active in

-- ? Discord Intergration is another way to notify users, and does it server-wide. It will also notify them of the EAS alert ending
Config.discordIntergration = true -- Use Discord intergration?
Config.channelID = 000000000000000000 -- The channel ID of the alert channel
Config.roleID = 'none' -- The alert role ID to mention, change to 'everyone' to mention everyone, or 'none' to not mention anyone
