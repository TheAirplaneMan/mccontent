minetest.register_node("mccontent:granite", {
	description = ("Granite"),
	tiles = {"mccontent_granite.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:granite_block", {
	description = ("Granite Block"),
	tiles = {"mccontent_granite_block.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("mccontent:andesite", {
	description = ("Andesite"),
	tiles = {"mccontent_andesite.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:andesite_block", {
	description = ("Andesite Block"),
	tiles = {"mccontent_andesite_block.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("mccontent:diorite", {
	description = ("Diorite"),
	tiles = {"mccontent_diorite.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:diorite_block", {
	description = ("Diorite Block"),
	tiles = {"mccontent_diorite_block.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("mccontent:tuff", {
	description = ("Tuff"),
	tiles = {"mccontent_tuff.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:tuff_block", {
	description = ("Tuff Block"),
	tiles = {"mccontent_tuff_block.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})






minetest.register_ore({
	ore_type        = "blob",
	ore             = "mccontent:granite",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 2416,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mccontent:andesite",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 2417,
		octaves = 1,
		persist = 0.0
	},
})

minetest.register_ore({
	ore_type        = "blob",
	ore             = "mccontent:diorite",
	wherein         = {"default:stone"},
	clust_scarcity  = 16 * 16 * 16,
	clust_size      = 5,
	y_max           = 31000,
	y_min           = -31000,
	noise_threshold = 0.0,
	noise_params    = {
		offset = 0.5,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = 2418,
		octaves = 1,
		persist = 0.0
	},
})



minetest.register_craft({
	output = "mccontent:granite_block 9",
	recipe = {
		{"mccontent:granite", "mccontent:granite", "mccontent:granite"},
		{"mccontent:granite", "mccontent:granite", "mccontent:granite"},
		{"mccontent:granite", "mccontent:granite", "mccontent:granite"},
	}
})

minetest.register_craft({
	output = "mccontent:andesite_block 9",
	recipe = {
		{"mccontent:andesite", "mccontent:andesite", "mccontent:andesite"},
		{"mccontent:andesite", "mccontent:andesite", "mccontent:andesite"},
		{"mccontent:andesite", "mccontent:andesite", "mccontent:andesite"},
	}
})

minetest.register_craft({
	output = "mccontent:diorite_block 9",
	recipe = {
		{"mccontent:diorite", "mccontent:diorite", "mccontent:diorite"},
		{"mccontent:diorite", "mccontent:diorite", "mccontent:diorite"},
		{"mccontent:diorite", "mccontent:diorite", "mccontent:diorite"},
	}
})


if core.get_modpath("stairs") then

	stairs.register_stair_and_slab("granite_block", "mccontent:granite_block",
		{cracky = 3},
		{"mccontent_granite_block.png"},
		("Granite Block Stair"),
		("Granite Block Slab"),
		default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("andesite_block", "mccontent:andesite_block",
		{cracky = 3},
		{"mccontent_andesite_block.png"},
		("Andesite Block Stair"),
		("Andesite Block Slab"),
		default.node_sound_stone_defaults())

	stairs.register_stair_and_slab("diorite_block", "mccontent:diorite_block",
		{cracky = 3},
		{"mccontent_diorite_block.png"},
		("Diorite Block Stair"),
		("Diorite Block Slab"),
		default.node_sound_stone_defaults())

end