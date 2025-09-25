dofile(minetest.get_modpath("mccontent") .. "/blublu.lua")
dofile(minetest.get_modpath("mccontent") .. "/decorative_stones.lua")
dofile(minetest.get_modpath("mccontent") .. "/resin.lua")
dofile(minetest.get_modpath("mccontent") .. "/oak.lua")

if minetest.settings:get_bool("mccontent.sandstone_tweaks", true) then
	dofile(minetest.get_modpath("mccontent") .. "/sandstone_tweaks.lua")
end