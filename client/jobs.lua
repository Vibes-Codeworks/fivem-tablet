RegisterNUICallback('setJob', function(data,cb)
    local job = data.job
    print(job)
    TriggerServerEvent('jobselector:setJob', job)
    TriggerServerEvent("jobs:test", "hello")

    print('server triggered with' .. job)
    cb('ok')
end)
RegisterCommand("jobtest", function()
    TriggerServerEvent("jobs:test", "hello from client")
end)