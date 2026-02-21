if not Config then
    error("Config.lua has not been loaded. Please make sure the file exists, included in fxmanifest.lua, and is free of syntax errors.")
    return
end

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
    local wait = Config.Wait.outVehicle
    while true do
        Citizen.Wait(wait)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) then
            wait = Config.Wait.inVehicle
        else
            wait = Config.Wait.outVehicle
        end
        if wait == Config.Wait.inVehicle then
            for k,v in pairs(Config.Stations) do
                if v.coords and GetDistanceBetweenCoords(GetEntityCoords(ped), v.coords, true) < v.radius then
                    if IsPedInAnyVehicle(ped) then
                        local vehicle = GetVehiclePedIsIn(ped, false)
                        if GetVehicleEngineHealth(vehicle) < Config.FixUnder and GetVehicleEngineHealth(vehicle) > 0 then
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