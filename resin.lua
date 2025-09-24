minetest.register_node("mccontent:oak_tree_with_resin", {
	description = ("Oak Tree with Resin"),
	tiles = {"mccontent_oak_tree_top.png^mccontent_resin_mineral.png", "mccontent_oak_tree_top.png^mccontent_resin_mineral.png",
		"mccontent_oak_tree.png^mccontent_resin_mineral.png"},
	drop = "mccontent:resin_lump",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

minetest.register_craftitem("mccontent:resin_lump", {
	description = ("Resin Lump"),
	inventory_image = "mccontent_resin_lump.png",
})

minetest.register_node("mccontent:resin_block", {
	description = ("Resin Block"),
	tiles = {"mccontent_resin_block.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 1, resin = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:resin_brick", {
	description = ("Resin Brick Block"),
	tiles = {"mccontent_resin_brick_block.png"},
	groups = {cracky = 3, oddly_breakable_by_hand = 1, resin = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "mccontent:resin_block",
	recipe = {
		{"mccontent:resin_lump", "mccontent:resin_lump", "mccontent:resin_lump"},
		{"mccontent:resin_lump", "mccontent:resin_lump", "mccontent:resin_lump"},
		{"mccontent:resin_lump", "mccontent:resin_lump", "mccontent:resin_lump"},
	}
})

minetest.register_craft({
	output = "mccontent:resin_brick 4",
	recipe = {
		{"mccontent:resin_block", "mccontent:resin_block"},
		{"mccontent:resin_block", "mccontent:resin_block"},
	}
})

if core.get_modpath("stairs") then

	stairs.register_stair_and_slab("resin_brick", "mccontent:resin_brick",
		{cracky = 3, oddly_breakable_by_hand =1},
		{"mccontent_resin_brick_block.png"},
		("Resin Brick Stair"),
		("Resin Brick Slab"),
		default.node_sound_stone_defaults())

end