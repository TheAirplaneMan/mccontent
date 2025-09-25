minetest.register_node("mccontent:oak_tree", {
	description = ("Oak Tree"),
	tiles = {"mccontent_oak_tree_top.png", "mccontent_oak_tree_top.png",
		"mccontent_oak_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_node("mccontent:oak_wood", {
	description = ("Oak Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"mccontent_oak_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("mccontent:oak_leaves", {
	description = ("Oak Tree Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"mccontent_oak_leaves.png"},
	special_tiles = {"mccontent_oak_leaves_simple.png"},
	waving = 1,
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{items = {"mccontent:oak_sapling"}, rarity = 20},
			{items = {"mccontent:oak_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = after_place_leaves,
})

minetest.register_node("mccontent:oak_sapling", {
	description = ("Oak Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"mccontent_oak_sapling.png"},
	inventory_image = "mccontent_oak_sapling.png",
	wield_image = "mccontent_oak_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = grow_sapling,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"mccontent:oak_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -4, y = 1, z = -4},
			{x = 4, y = 7, z = 4},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})


-- Oak Forest

	minetest.register_biome({
		name = "oak_forest",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 1,
		heat_point = 58,
		humidity_point = 72,
	})

	minetest.register_biome({
		name = "oak_forest_shore",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 3,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = 0,
		y_min = -1,
		heat_point = 58,
		humidity_point = 72,
	})

	minetest.register_biome({
		name = "oak_forest_ocean",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		node_cave_liquid = "default:water_source",
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		vertical_blend = 1,
		y_max = -2,
		y_min = -255,
		heat_point = 58,
		humidity_point = 72,
	})

	minetest.register_biome({
		name = "oak_forest_under",
		node_cave_liquid = {"default:water_source", "default:lava_source"},
		node_dungeon = "default:cobble",
		node_dungeon_alt = "default:mossycobble",
		node_dungeon_stair = "stairs:stair_cobble",
		y_max = -256,
		y_min = -31000,
		heat_point = 58,
		humidity_point = 72,
	})

	minetest.register_decoration({
		name = "mccontent:oak_tree",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 80,
		fill_ratio = 0.04,
		biomes = {"oak_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("mccontent") .. "/schematics/emergent_oak_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		name = "mccontent:oak_tree_with_resin",
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 80,
		fill_ratio = 0.02,
		biomes = {"oak_forest"},
		y_max = 31000,
		y_min = 1,
		schematic = minetest.get_modpath("mccontent") .. "/schematics/emergent_oak_tree_with_resin.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})



minetest.register_craft({
	output = "mccontent:oak_wood 4",
	recipe = {
		{"mccontent:oak_tree"},
	}
})

if minetest.get_modpath("stairs") then

	stairs.register_stair_and_slab("oak_wood", "mccontent:oak_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
		{"mccontent_oak_wood.png"},
		("Oak Wood Stair"),
		("Oak Wood Slab"),
		default.node_sound_wood_defaults())

end





default.register_fence("mccontent:fence_oak_wood", {
	description = ("Oak Wood Fence"),
	texture = "mccontent_oak_wood.png", -- Feelin' lazy, will add an actual texture later
	inventory_image = "default_fence_overlay.png^mccontent_oak_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^mccontent_oak_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "mccontent:oak_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_fence_rail("mccontent:fence_rail_oak_wood", {
	description = ("Oak Wood Fence Rail"),
	texture = "mccontent_oak_wood.png",
	inventory_image = "default_fence_rail_overlay.png^mccontent_oak_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^mccontent_oak_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "mccontent:oak_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

default.register_mesepost("mccontent:mese_post_light_oak_wood", {
	description = ("Oak Wood Mese Post Light"),
	texture = "mccontent_oak_wood.png",
	material = "mccontent:oak_wood",
})