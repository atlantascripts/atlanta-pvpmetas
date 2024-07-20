CreateThread(function()
    while true do
        Wait(1000)
        for _, veh in ipairs(GetGamePool('CVehicle')) do
            SetVehicleTyresCanBurst(veh, false)
        end
    end
end)