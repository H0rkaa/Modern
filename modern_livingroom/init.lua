local modpath = minetest.get_modpath("modern_livingroom")
if modpath then
    dofile(modpath .. "/nodes.lua")
else
    error("Modpath for modern_livingroom is nil.")
end