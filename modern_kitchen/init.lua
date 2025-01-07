local modpath = minetest.get_modpath("modern_kitchen")
if modpath then
    dofile(modpath .. "/nodes.lua")
else
    error("Modpath for modern_kitchen is nil.")
end
