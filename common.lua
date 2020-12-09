function GetRandomPreset()
	local presets = {}

	for preset, info in pairs(Config.Presets) do
		table.insert(presets, preset)
	end

	return #presets > 0 and presets[math.random(#presets)] or ''
end

function GetHandleFromCoords(coords)
	return GetHashKey(string.format('%d_%d_%d', math.floor(coords.x * 10), math.floor(coords.y * 10), math.floor(coords.z * 10)))
end