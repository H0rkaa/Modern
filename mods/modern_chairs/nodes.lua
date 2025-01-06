--Plywood chairs
minetest.register_node("modern_chairs:stool_plywood", {
    description = "Stool in plywood",
    drawtype = "mesh",
    mesh = "tabouret.obj",
    tiles = {"plywood.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_chairs:armchair_plywood", {
    description = "Armchair in plywood",
    drawtype = "mesh",
    mesh = "fauteuil.gltf",
    tiles = {"plywood.png", "wool_white.png", "coussin.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})


--Wood light chairs
minetest.register_node("modern_chairs:stool_wood_light", {
    description = "Stool in light wood",
    drawtype = "mesh",
    mesh = "tabouret.obj",
    tiles = {"wood_light.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_chairs:armchair_wood_light", {
    description = "Armchair in light wood",
    drawtype = "mesh",
    mesh = "fauteuil.obj",
    tiles = {"coussin.png", "wool_white.png", "wood_light.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})


--Wood dark chairs
minetest.register_node("modern_chairs:stool_wood_dark", {
    description = "Stool in dark wood",
    drawtype = "mesh",
    mesh = "tabouret.obj",
    tiles = {"wood_dark.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_chairs:armchair_wood_dark", {
    description = "Armchair in dark wood",
    drawtype = "mesh",
    mesh = "fauteuil.obj",
    tiles = {"coussin.png", "wool_white.png", "wood_dark.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})