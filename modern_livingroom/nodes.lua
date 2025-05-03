local function register_livingroom_node(name, desc, mesh, tiles, has_inventory, c, l)
    local node_def = {
        description = desc,
        drawtype = "mesh",
        mesh = mesh,
        tiles = tiles,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        groups = {cracky = 3},
    }
    
    if has_inventory then
        node_def.on_construct = function(pos) modern_on_construct(pos, desc, c, l) end
        for k, v in pairs(modern_inventory_functions()) do
            node_def[k] = v
        end
    end
    
    minetest.register_node(name, node_def)
end
register_livingroom_node("modern_livingroom:buffet_wood", "Wood Buffet", "buffet.gltf", {"plywood.png", "wood_dark.png", "marble_black.png", "marble_white.png"}, true, 8, 3)
register_livingroom_node("modern_livingroom:buffet_marble", "Marble Buffet", "buffet.gltf", {"marble_black.png", "marble_white.png", "wood_dark.png", "plywood.png"}, true, 8, 3)
register_livingroom_node("modern_livingroom:tv", "Television", "tv.gltf", {"tv.png","tv_foot.png","tv_foot.png"})
register_livingroom_node("modern_livingroom:tv_soundbar", "Television Soundbar", "tv_soundbar.gltf", {"tv_soundbar.png"})
register_livingroom_node("modern_livingroom:tv_wall_mounted", "Television Wall-Mounted", "tv_wall_mounted.gltf", {"tv.png"})


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

local function register_curtains(name, desc, mesh, tiles, drop, toggle_state)
    minetest.register_node(name, {
        description = desc,
        drawtype = "mesh",
        mesh = mesh,
        tiles = tiles,
        paramtype = "light",
        paramtype2 = "facedir",
        sunlight_propagates = true,
        groups = {cracky = 3, not_in_creative_inventory = drop and 1 or nil},
        drop = drop,
        collision_box = {
            type = "fixed",
            fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
        },
        selection_box = {
            type = "fixed",
            fixed = { -0.5, -0.5, 0.49, 0.5, 0.5, 0.5 },
        },
        on_punch = function(pos, node, puncher, pointed_thing)
            toggle_curtain(pos, toggle_state)
            toggle_adjacent_curtains(pos, toggle_state == "modern_livingroom:curtains_open" and "open" or "closed")
        end,
    })
end

register_curtains("modern_livingroom:curtains_closed", "Curtains (Closed)", "curtains_close.gltf", {"concrete_white.png"}, nil, "modern_livingroom:curtains_open")
register_curtains("modern_livingroom:curtains_open", "Curtains (Open)", "curtains_open.gltf", {"concrete_white.png"}, "modern_livingroom:curtains_closed", "modern_livingroom:curtains_closed")

