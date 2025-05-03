local function register_kitchen_node(name, desc, mesh, tiles, has_inventory, c, l)
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

-- Register decorative kitchen items
register_kitchen_node("modern_kitchen:paper_towel", "Paper towel", "sopalin.gltf", {"plywood.png", "paper_towel.png"}, false)
register_kitchen_node("modern_kitchen:knives_holder", "Knives holder", "knives_holder.gltf", {"knives_holder.png", "knives.png"}, false)
register_kitchen_node("modern_kitchen:sushi", "Sushi", "sushi.gltf", {"sushi_tray.png", "sushi_whites.png", "sushi_shopsticks.png", "sushi_blacks.png", "sushi_sauce.png"}, false)

-- Register black gilt furniture
register_kitchen_node("modern_kitchen:black_cupboard_low", "Low Cupboard", "black_cupboard_low.gltf", {"gris_placard.png", "noir.png", "gold.png"}, true, 8, 2)
register_kitchen_node("modern_kitchen:black_cupboard_large", "Large Cupboard", "black_cupboard_large.gltf", {"gris_placard.png", "noir.png", "gold.png"}, true, 8, 4)
register_kitchen_node("modern_kitchen:black_cupboard", "Cupboard", "black_cupboard.gltf", {"gris_placard.png", "noir.png", "gold.png"}, true, 8, 3)

-- Register white plywood furniture
register_kitchen_node("modern_kitchen:simple_furniture", "Simple furniture", "simple_furniture.gltf", {"concrete_white.png", "plywood.png"}, true, 8, 2)
register_kitchen_node("modern_kitchen:worktop_central", "Worktop Central", "worktop_central.gltf", {"polished_stone.png", "plywood.png"}, false)
register_kitchen_node("modern_kitchen:worktop_border", "Worktop Border", "worktop_border.gltf", {"polished_stone.png", "plywood.png"}, false)
register_kitchen_node("modern_kitchen:sink", "Sink", "sink.gltf", {"plywood.png", "concrete_white.png"}, true, 8, 2)
