local function register_block(name, desc, tiles, groups, drawtype, mesh, extra)
    local node_def = {
        description = desc,
        paramtype = "light",
        paramtype2 = "facedir",
        tiles = tiles,
        groups = groups,
    }
    
    if drawtype then
        node_def.drawtype = drawtype
    end
    
    if mesh then
        node_def.mesh = mesh
    end
    
    if extra then
        for k, v in pairs(extra) do
            node_def[k] = v
        end
    end
    
    minetest.register_node(name, node_def)
end

local common_groups = {choppy = 2, wood = 1}

-- Wooden blocks
register_block("modern_blocks:parquet_plywood", "Plywood Parquet", {"plywood.png"}, common_groups)
register_block("modern_blocks:wood_dark", "Dark wood", {"wood_dark.png"}, common_groups)
register_block("modern_blocks:wood_light", "Light wood", {"wood_light.png"}, common_groups)
register_block("modern_blocks:wooden_bars", "Wooden bars", {"wooden_bars.png"}, {cracky = 3}, "mesh", "wooden_bars.gltf", {sunlight_propagates = true})
register_block("modern_blocks:wooden_bars_leaves", "Wooden bars with foliage", {"wooden_bars.png", "foliage_front.png", "foliage_middle.png", "foliage_side.png"}, {cracky = 3}, "mesh", "wooden_bars_leaves.gltf", {use_texture_alpha = "clip", sunlight_propagates = true})

-- Stone blocks
register_block("modern_blocks:polished_stone", "Polished stone", {"polished_stone.png"}, common_groups)

-- Concrete blocks
register_block("modern_blocks:concrete_white", "White concrete", {"concrete_white.png"}, common_groups)
register_block("modern_blocks:concrete_black", "Black concrete", {"concrete_black.png"}, common_groups)

-- Bricks blocks
register_block("modern_blocks:bricks_red", "Red bricks", {"bricks_red.png"}, common_groups)
register_block("modern_blocks:bricks_black", "Black bricks", {"bricks_black.png"}, common_groups)

-- Marble blocks
register_block("modern_blocks:marble_white", "White marble", {"marble_white.png"}, common_groups)
register_block("modern_blocks:marble_black", "Black marble", {"marble_black.png"}, common_groups)