--Wooden blocks
minetest.register_node("modern_blocks:parquet_plywood", {
    description = "Plywood Parquet",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"plywood.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:wood_dark", {
    description = "Dark wood",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"wood_dark.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:wood_light", {
    description = "Light wood",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"wood_light.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:wooden_bars", {
    description = "Wooden bars",
    drawtype = "mesh",
    mesh = "wooden_bars.gltf",
    tiles = {"wooden_bars.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_blocks:wooden_bars_leaves", {
    description = "Wooden bars with foliage",
    drawtype = "mesh",
    mesh = "wooden_bars_leaves.gltf",
    tiles = {"wooden_bars.png", "foliage_front.png", "foliage_middle.png", "foliage_side.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    use_texture_alpha = "clip",
    sunlight_propagates = true,
    groups = {cracky = 3},
})


--Stone blocks
minetest.register_node("modern_blocks:polished_stone", {
    description = "Polished stone",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"polished_stone.png"},
    groups = {choppy = 2, wood = 1},
})


--Concrete blocks
minetest.register_node("modern_blocks:concrete_white", {
    description = "White concrete",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"concrete_white.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:concrete_black", {
    description = "Black concrete",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"concrete_black.png"},
    groups = {choppy = 2, wood = 1},
})


--Bricks blocks
minetest.register_node("modern_blocks:bricks_red", {
    description = "Red bricks",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"bricks_red.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:bricks_black", {
    description = "Black bricks",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"bricks_black.png"},
    groups = {choppy = 2, wood = 1},
})


--Marble blocks
minetest.register_node("modern_blocks:marble_white", {
    description = "White marble",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"marble_white.png"},
    groups = {choppy = 2, wood = 1},
})

minetest.register_node("modern_blocks:marble_black", {
    description = "Black marble",
    paramtype = "light",
    paramtype2 = "facedir",
    tiles = {"marble_black.png"},
    groups = {choppy = 2, wood = 1},
})