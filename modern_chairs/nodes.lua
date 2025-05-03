--Plywood chairs
local function register_chair(name, desc, mesh, tiles)
    minetest.register_node(name, {
        description = desc,
        drawtype = "mesh",
        mesh = mesh,
        tiles = tiles,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        groups = {cracky = 3},
    })
end

local chair_variants = {
    {"stool_plywood", "Stool in plywood", "stool.gltf", {"plywood.png"}},
    {"armchair_plywood", "Armchair in plywood", "fauteuil.gltf", {"plywood.png", "wool_white.png", "coussin.png"}},
    {"stool_wood_light", "Stool in light wood", "stool.gltf", {"wood_light.png"}},
    {"armchair_wood_light", "Armchair in light wood", "fauteuil.gltf", {"wood_light.png", "wool_white.png", "coussin.png"}},
    {"stool_wood_dark", "Stool in dark wood", "stool.gltf", {"wood_dark.png"}},
    {"armchair_wood_dark", "Armchair in dark wood", "fauteuil.gltf", {"wood_dark.png", "wool_white.png", "coussin.png"}},
}

for _, chair in ipairs(chair_variants) do
    register_chair("modern_chairs:" .. chair[1], chair[2], chair[3], chair[4])
end