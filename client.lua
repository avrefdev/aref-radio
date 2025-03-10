
CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            if GetIsVehicleEngineRunning(vehicle) then
                SetVehRadioStation(vehicle, "OFF")
                SetVehicleRadioEnabled(vehicle, false)
            end
        end
        Wait(0)
    end
end)
