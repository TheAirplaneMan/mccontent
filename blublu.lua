minetest.register_craftitem("mccontent:blueberries_popped", {
	description = ("Popped Blueberries"),
	inventory_image = "mccontent_blueberries_popped.png",
})

minetest.register_node("mccontent:blublu_block", {
	description = ("Blublu Block"),
	tiles = {"mccontent_blublu_block.png"},
	groups = {cracky = 3, blublu = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("mccontent:blublu_pillar", {
	description = ("Blublu Pillar"),
	tiles = {"mccontent_blublu_pillar_top.png", "mccontent_blublu_pillar_top.png", "mccontent_blublu_pillar.png"},
	groups = {cracky = 3, blublu = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type = "cooking",
	output = "mccontent:blueberries_popped",
	recipe = "default:blueberries",
})

minetest.register_craft({
	output = "mccontent:blublu_block",
	recipe = {
		{"mccontent:blueberries_popped", "mccontent:blueberries_popped", "mccontent:blueberries_popped"},
		{"mccontent:blueberries_popped", "mccontent:blueberries_popped", "mccontent:blueberries_popped"},
		{"mccontent:blueberries_popped", "mccontent:blueberries_popped", "mccontent:blueberries_popped"},
	}
})

minetest.register_craft({
	output = "mccontent:blublu_pillar 3",
	recipe = {
		{"mccontent:blublu_block"},
		{"mccontent:blublu_block"},
		{"mccontent:blublu_block"},
	}
})