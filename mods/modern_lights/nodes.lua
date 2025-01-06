-- Enregistre une lampe simple
modern_lights.register_lampe("modern_lights:lampe", {
    description = "Lampe classique",
    drawtype = "mesh",
    mesh = "lampe.obj",
    tiles = {"plywood.png", "ampoule.png", "noir.png", "verre.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    use_texture_alpha = "clip",
    sunlight_propagates = true,
    light_on = 14, -- Intensité lumineuse lorsqu'allumée
    light_off = 0, -- Intensité lumineuse lorsqu'éteinte
    groups = {cracky = 3},
})