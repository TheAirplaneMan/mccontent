	minetest.register_decoration({
		name = "mccontent:sandstone_desert_pyramid",
		deco_type = "schematic",
		place_on = {"default:sand"},
		sidelen = 80,
		fill_ratio = 0.000001,
		biomes = {"sandstone_desert"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("mccontent") .. "/schematics/sandstone_desert_pyramid.mts",
		flags = "place_center_x, place_center_z, force_placement",
		place_offset_y = -6,
		rotation = "random",
	})