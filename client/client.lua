RegisterNetEvent('ShowNotification')
AddEventHandler('ShowNotification', function(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end)

RegisterNetEvent('CreateEASAlert')
AddEventHandler('CreateEASAlert', function(args)


end)

RegisterNetEvent('EndEASAlert')
AddEventHandler('EndEASAlert', function()

end)

RegisterNetEvent('ShowEASAlert')
AddEventHandler('ShowEASAlert', function()

end)