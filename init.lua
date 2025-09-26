mccontent = {}

dofile(minetest.get_modpath("mccontent") .. "/blublu.lua")
dofile(minetest.get_modpath("mccontent") .. "/decorative_stones.lua")
dofile(minetest.get_modpath("mccontent") .. "/resin.lua")
dofile(minetest.get_modpath("mccontent") .. "/oak.lua")
--dofile(minetest.get_modpath("mccontent") .. "/flowers.lua")


if minetest.settings:get_bool("mccontent.sandstone_tweaks", true) then
	dofile(minetest.get_modpath("mccontent") .. "/sandstone_tweaks.lua")
end

if minetest.settings:get_bool("mccontent.enable_structures", true) then
	dofile(minetest.get_modpath("mccontent") .. "/pyramids.lua")
end