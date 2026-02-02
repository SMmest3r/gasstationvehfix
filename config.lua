Config = {}

Config.Blip = {
	sprite = 361,
	scale = 0.8,
	colour = 1,
	shortRange = true,
	name = "Gas Station",
}

Config.Stations = {
	[1] = {coords = vector3(263.894, 2606.463, 44.983), radius = 20.0, blip = true},
	[2] = {coords = vector3(1039.958, 2671.134, 39.550), radius = 20.0, blip = true},
	[3] = {coords = vector3(1207.260, 2660.175, 37.899), radius = 20.0, blip = true},
	[4] = {coords = vector3(2539.685, 2594.192, 37.944), radius = 20.0, blip = true},
	[5] = {coords = vector3(2679.858, 3263.946, 55.240), radius = 20.0, blip = true},
	[6] = {coords = vector3(2005.055, 3773.887, 32.403), radius = 20.0, blip = true},
	[7] = {coords = vector3(1687.156, 4929.392, 42.078), radius = 20.0, blip = true},
	[8] = {coords = vector3(1701.314, 6416.028, 32.763), radius = 20.0, blip = true},
	[9] = {coords = vector3(179.857, 6602.839, 31.868), radius = 20.0, blip = true},
	[10] = {coords = vector3(-94.4619, 6419.594, 31.489), radius = 20.0, blip = true},
	[11] = {coords = vector3(-2554.996, 2334.40, 33.078), radius = 20.0, blip = true},
	[12] = {coords = vector3(-1800.375, 803.661, 138.651), radius = 20.0, blip = true},
	[13] = {coords = vector3(-1437.622, -276.747, 46.207), radius = 20.0, blip = true},
	[14] = {coords = vector3(-2096.243, -320.286, 13.168), radius = 20.0, blip = true},
	[15] = {coords = vector3(-724.619, -935.1631, 19.213), radius = 20.0, blip = true},
	[16] = {coords = vector3(-526.019, -1211.003, 18.184), radius = 20.0, blip = true},
	[17] = {coords = vector3(-70.2148, -1761.792, 29.534), radius = 20.0, blip = true},
	[18] = {coords = vector3(265.648, -1261.309, 29.292), radius = 20.0, blip = true},
	[19] = {coords = vector3(819.653, -1028.846, 26.403), radius = 20.0, blip = true},
	[20] = {coords = vector3(1208.951, -1402.567,35.224), radius = 20.0, blip = true},
	[21] = {coords = vector3(1181.381, -330.847, 69.316), radius = 20.0, blip = true},
	[22] = {coords = vector3(620.843, 269.100, 103.089), radius = 20.0, blip = true},
	[23] = {coords = vector3(2581.321, 362.039, 108.468), radius = 20.0, blip = true},
	[24] = {coords = vector3(176.631, -1562.025, 29.263), radius = 20.0, blip = true},
	[25] = {coords = vector3(-319.292, -1471.715, 30.549), radius = 20.0, blip = true},
	[26] = {coords = vector3(1784.324, 3330.55, 41.253), radius = 20.0, blip = true},
}

Config.OnFix = {
	sound = true, -- Play sound on vehicle fix
	flash = {
		enabled = true, -- Enable flash effect on vehicle fix
		fadeIn = 0, -- Fade-in time for the flash effect in milliseconds
		duration = 300, -- Duration of the flash effect in milliseconds
		fadeOut = 0 -- Fade-out time for the flash effect in milliseconds
	},
	paint = true -- Sets the vehicle's color to a new random color on vehicle fix
}

Config.Wait = {
	inVehicle = 500, -- Wait time between checks when player is in a vehicle (in milliseconds) !Reducing this may impact performance!
	outVehicle = 2000 -- Wait time between checks when player is not in a vehicle (in milliseconds) !Reducing this may impact performance!
}