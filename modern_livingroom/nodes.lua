
minetest.register_node("modern_livingroom:buffet_wood", {
    description = "Wood Buffet",
    drawtype = "mesh",
    mesh = "buffet.gltf",
    tiles = {"plywood.png", "wood_dark.png", "marble_black.png", "marble_white.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

minetest.register_node("modern_livingroom:buffet_marble", {
    description = "Marble Buffet",
    drawtype = "mesh",
    mesh = "buffet.gltf",
    tiles = { "marble_black.png", "marble_white.png", "wood_dark.png", "plywood.png",},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
})

-- Fonction utilitaire pour basculer un rideau
local function toggle_curtain(pos, new_name)
    local node = minetest.get_node(pos)
    minetest.swap_node(pos, {
        name = new_name,
        param2 = node.param2,
    })
    local meta = minetest.get_meta(pos)
    if new_name == "modern_livingroom:curtains_open" then
        meta:set_string("state", "open")
    else
        meta:set_string("state", "closed")
    end
end

-- Fonction pour basculer les rideaux adjacents
local function toggle_adjacent_curtains(pos, target_state)
    local offsets = {
        {x = 1, y = 0, z = 0}, -- droite
        {x = -1, y = 0, z = 0}, -- gauche
        {x = 0, y = 0, z = 1}, -- devant
        {x = 0, y = 0, z = -1}, -- derrière
    }

    for _, offset in ipairs(offsets) do
        local neighbor_pos = vector.add(pos, offset)
        local neighbor_node = minetest.get_node(neighbor_pos)
        if neighbor_node.name == "modern_livingroom:curtains_closed" and target_state == "open" then
            toggle_curtain(neighbor_pos, "modern_livingroom:curtains_open")
        elseif neighbor_node.name == "modern_livingroom:curtains_open" and target_state == "closed" then
            toggle_curtain(neighbor_pos, "modern_livingroom:curtains_closed")
        end
    end
end

-- Rideaux fermés
minetest.register_node("modern_livingroom:curtains_closed", {
    description = "Curtains (Closed)",
    drawtype = "mesh",
    mesh = "curtains_close.gltf",
    tiles = {"concrete_white.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3},
    collision_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
    },
    selection_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
    },

    on_punch = function(pos, node, puncher, pointed_thing)
        toggle_curtain(pos, "modern_livingroom:curtains_open")
        toggle_adjacent_curtains(pos, "open")
    end,
})

-- Rideaux ouverts
minetest.register_node("modern_livingroom:curtains_open", {
    description = "Curtains (Open)",
    drawtype = "mesh",
    mesh = "curtains_open.gltf",
    tiles = {"concrete_white.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    sunlight_propagates = true,
    groups = {cracky = 3, not_in_creative_inventory = 1},
    drop = "modern_livingroom:curtains_closed",
    collision_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
    },
    selection_box = {
        type = "fixed",
        fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
    },

    on_punch = function(pos, node, puncher, pointed_thing)
        toggle_curtain(pos, "modern_livingroom:curtains_closed")
        toggle_adjacent_curtains(pos, "closed")
    end,
})

