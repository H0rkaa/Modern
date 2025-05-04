-- Enregistre une lampe simple

modern_lights.register_lampe("modern_lights:lamp_classic", {
    description = "Classic Lamp",
    drawtype = "mesh",
    mesh = "classic_lamp.gltf",
    tiles = {"plywood.png", "verre.png", "noir.png", "ampoule.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    use_texture_alpha = "clip",
    sunlight_propagates = true,
    light_on = 14,
    light_off = 0,
    groups = {cracky = 3},
})


modern_lights.register_lampe("modern_lights:floor_lamp", {
    description = "Floor Lamp",
    drawtype = "mesh",
    mesh = "floor_lamp.gltf",
    tiles = {
        "wood_dark.png",
        "wool_black.png^[opacity:128",
        "concrete_black.png",
        "concrete_white.png"
    },
    paramtype = "light",
    paramtype2 = "facedir",
    use_texture_alpha = "blend",
    sunlight_propagates = true,
    light_on = 14,
    light_off = 0,
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
