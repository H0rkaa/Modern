local modpath = minetest.get_modpath("modern_chairs")
if modpath then
    dofile(modpath .. "/nodes.lua")
else
    error("Modpath for modern_chairs is nil.")
end