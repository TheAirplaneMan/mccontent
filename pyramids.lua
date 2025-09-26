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
		place_offset_y = -5,
		rotation = "random",
	})

	minetest.register_decoration({
		name = "mccontent:cold_desert_spirecake",
		deco_type = "schematic",
		place_on = {"default:silver_sand"},
		sidelen = 80,
		fill_ratio = 0.000001,
		biomes = {"cold_desert"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("mccontent") .. "/schematics/cold_desert_spirecake.mts",
		flags = "place_center_x, place_center_z, force_placement",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "mccontent:desert_well",
		deco_type = "schematic",
		place_on = {"default:desert_sand"},
		sidelen = 80,
		fill_ratio = 0.000001,
		biomes = {"desert"},
		y_max = 31000,
		y_min = 1,
		place_offset_y = -1,
		schematic = minetest.get_modpath("mccontent") .. "/schematics/desert_well.mts",
		flags = "place_center_x, place_center_z, force_placement",
		rotation = "random",
	})