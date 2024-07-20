CreateThread(function()
    -- Only Morning
    NetworkOverrideClockTime(12, 0, 0)

    -- No snow and rain
    SetWeatherTypePersist("CLEAR")
    SetWeatherTypeNowPersist("CLEAR")
    SetWeatherTypeNow("CLEAR")
    ClearWeatherTypePersist()
end)

Weather = function()
    while true do
        SetWeatherTypeNowPersist("EXTRASUNNY")
        NetworkOverrideClockTime(12, 12, 12)
        --
        Wait(500)
    end
end

CreateThread(Weather)