CreateThread(function()
    while true do
        if IsPedFalling(PlayerPedId()) or IsPedInParachuteFreeFall(PlayerPedId()) then
            SetEntityCanBeDamaged(PlayerPedId(), false)
        else
            SetEntityCanBeDamaged(PlayerPedId(), true)
        end
        Wait(100)
    end
end)

CreateThread(function()
    while true do
        local Ped = GetPlayerPed(-1)
        SetPedCanRagdoll(Ped, false)
        Wait(200)
    end
end)

CreateThread(function()
    while true do
        if IsPedGettingUp(PlayerPedId()) then
            ClearPedTasksImmediately(PlayerPedId(), true)
        end
        Wait(100)
    end
end)