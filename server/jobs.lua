print("^2[JOBS] Server script loaded!^0")

RegisterNetEvent('jobselector:setJob')
AddEventHandler('jobselector:setJob', function(job)
    print('server check')
    local src = source 
    local Player = exports.qbx_core:GetPlayer(src)
    print('something is happening on server')
    if Player then 
        Player.Functions.SetJob(job,0)
        TriggerClientEvent('QBCore:Notify', src, 'You are now working as: '.. job, 'success')
    end

end)

RegisterNetEvent("jobs:test")
AddEventHandler("jobs:test", function(msg)
    print("Got test event from client:", msg)
end)

