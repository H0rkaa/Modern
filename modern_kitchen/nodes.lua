--Decorative kitchen
minetest.register_node("modern_kitchen:paper_towel", {
    description = "Paper towel",
    drawtype = "mesh",
    mesh = "sopalin.gltf",
    tiles = {"plywood.png", "paper_towel.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:knives_holder", {
    description = "Knives holder",
    drawtype = "mesh",
    mesh = "knives.glb",
    tiles = {"knives_holder.png", "knives.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:sushi", {
    description = "Sushi",
    drawtype = "mesh",
    mesh = "sushi.gltf",
    tiles = {"sushi_tray.png", "sushi_whites.png", "sushi_shopsticks.png", "sushi_blacks.png", "sushi_sauce.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})


--Black gilt furnitures
minetest.register_node("modern_kitchen:black_cupboard_low", {
    description = "Low Cupboard",
    drawtype = "mesh",
    mesh = "black_cupboard_low.gltf",
    tiles = {"gris_placard.png", "noir.png", "gold.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:black_cupboard_large", {
    description = "Large Cupboard",
    drawtype = "mesh",
    mesh = "black_cupboard_large.gltf",
    tiles = {"gris_placard.png", "noir.png", "gold.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
    selection_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        },
    },
    collision_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        },
    },
})

minetest.register_node("modern_kitchen:black_cupboard", {
    description = "Cupboard",
    drawtype = "mesh",
    mesh = "black_cupboard.gltf",
    tiles = {"gris_placard.png", "noir.png", "gold.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})


--White plywood furnitures
minetest.register_node("modern_kitchen:simple_furniture", {
    description = "Simple furniture",
    drawtype = "mesh",
    mesh = "simple_furniture.gltf",
    tiles = {"concrete_white.png", "plywood.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:worktop_central", {
    description = "Worktop Central",
    drawtype = "mesh",
    mesh = "worktop_central.gltf",
    tiles = {"polished_stone.png", "plywood.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:worktop_border", {
    description = "Worktop Border",
    drawtype = "mesh",
    mesh = "worktop_border.gltf",
    tiles = {"polished_stone.png", "plywood.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_kitchen:sink", {
    description = "Sink",
    drawtype = "mesh",
    mesh = "sink.gltf",
    tiles = {"plywood.png", "concrete_white.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

