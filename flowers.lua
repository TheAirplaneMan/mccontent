mccontent.flowers = {
	{"allium",      "Allium", "pink"},
	{"oxeye_daisy",       "Oxeye Daisy", "white"}, -- Light Grey dye was just dumb
	{"blue_orchid",       "Blue Orchid", "cyan"},
}

local flowers = mccontent.flowers

for i = 1, #flowers do
	local name, desc, color = unpack(flowers[i])

	minetest.register_node("mccontent:" .. name .. "", {
		description = (desc .. " "),
	        drawtype = "plantlike",
		waving = 1,
		tiles = {"mccontent_" .. name .. ".png"},
		inventory_image = "mccontent_" .. name .. ".png",
		wield_image = "mccontent_" .. name .. ".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		buildable_to = true,		
                groups = {"color_" .. color .. " = 1", snappy = 3, flower = 1, flora = 1, attached_node = 1},
		sounds = default.node_sound_leaves_defaults(),
	})
end