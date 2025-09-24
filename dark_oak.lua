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