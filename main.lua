Citizen.CreateThread(function()
    for k,v in pairs(Config.Stations) do
        local blip = AddBlipForCoord(v)
        SetBlipSprite(blip, 361)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Gas Station")
        EndTextCommandSetBlipName(blip)
    end
    local wait = 2000
    while true do
        Citizen.Wait(wait)
        if IsPedInAnyVehicle(PlayerPedId()) then
            wait = 500
        else
            wait = 2000
        end
        if wait == 500 then
            for k,v in pairs(Config.Stations) do
                if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v, true) < 20 then
                    if IsPedInAnyVehicle(PlayerPedId()) then
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if GetVehicleEngineHealth(vehicle) < 1000.0 and GetVehicleEngineHealth(vehicle) > 0 then
                            SendNUIMessage({
                                type = "play",
                            })
                            SetVehicleEngineHealth(vehicle, 1000.0)
                            SetVehicleEngineOn(vehicle, true, true)
                            SetVehicleFixed(vehicle)
                            SetVehicleDeformationFixed(vehicle)
                            SetVehicleUndriveable(vehicle, false)
                        end
                    end
                end
            end
        end
    end
end)