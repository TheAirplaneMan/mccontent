minetest.override_item("default:sandstone", {
	tiles = {"default_sandstone.png", "mccontent_sandstone_bottom.png", "mccontent_sandstone_side.png"}
})

minetest.override_item("default:desert_sandstone", {
	tiles = {"default_desert_sandstone.png", "mccontent_desert_sandstone_bottom.png", "mccontent_desert_sandstone_side.png"}
})

minetest.override_item("default:silver_sandstone", {
	tiles = {"default_silver_sandstone.png", "mccontent_silver_sandstone_bottom.png", "mccontent_silver_sandstone_side.png"}
})

if minetest.get_modpath("tropical") then
	minetest.override_item("tropical:sandstone", {
		tiles = {"tropical_sandstone.png", "mccontent_tropical_sandstone_bottom.png", "mccontent_tropical_sandstone_side.png"}
	})
end