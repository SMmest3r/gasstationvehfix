Citizen.CreateThread(function()
    for k,v in pairs(Config.Stations) do
        if v.blip then
            local blip = AddBlipForCoord(v.coords)
            SetBlipSprite(blip, Config.Blip.sprite)
            SetBlipScale(blip, Config.Blip.scale)
            SetBlipColour(blip, Config.Blip.colour)
            SetBlipAsShortRange(blip, Config.Blip.shortRange)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.Blip.name)
            EndTextCommandSetBlipName(blip)
        end
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
                if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.coords, true) < v.radius then
                    if IsPedInAnyVehicle(PlayerPedId()) then
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                        if GetVehicleEngineHealth(vehicle) < 1000.0 and GetVehicleEngineHealth(vehicle) > 0 then
                            if Config.OnFix.sound then
                                SendNUIMessage({
                                    type = "play",
                                })
                            end
                            if Config.OnFix.flash.enabled then
                                SetFlash(0, 0, Config.OnFix.flash.fadeIn, Config.OnFix.flash.duration, Config.OnFix.flash.fadeOut)
                            end
                            SetVehicleEngineHealth(vehicle, 1000.0)
                            SetVehicleEngineOn(vehicle, true, true)
                            SetVehicleFixed(vehicle)
                            SetVehicleDeformationFixed(vehicle)
                            SetVehicleUndriveable(vehicle, false)
                            if Config.OnFix.paint then
                                local r = math.random(0, 255)
                                local g = math.random(0, 255)
                                local b = math.random(0, 255)
                                SetVehicleCustomPrimaryColour(vehicle, r, g, b)
                                SetVehicleCustomSecondaryColour(vehicle, r, g, b)
                            end
                        end
                    end
                end
            end
        end
    end
end)