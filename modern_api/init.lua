-- For inventories
function modern_on_construct(pos, description, c, l)
    local meta = minetest.get_meta(pos)
    meta:set_string("infotext", description)
    local inv = meta:get_inventory()
    inv:set_size("main", c * l)
    meta:set_string("formspec",
    "size[8,8]" ..
    "list[context;main;0,0;"..c..","..l..";]"..
    "list[current_player;main;0,4.2;8,4;]" ..
    "listring[context;main]"..
    "listring[current_player;main]")
end

function modern_inventory_functions()
    return {
        can_dig = function(pos, player)
            local meta = minetest.get_meta(pos)
            local inv = meta:get_inventory()
            return inv:is_empty("main")
        end,
        allow_metadata_inventory_put = function(pos, listname, index, stack, player)
            return stack:get_count()
        end,
        allow_metadata_inventory_take = function(pos, listname, index, stack, player)
            return stack:get_count()
        end,
        on_blast = function(pos)
            local meta = minetest.get_meta(pos)
            local inv = meta:get_inventory()
            local node = minetest.get_node(pos)
            for i = 1, inv:get_size("main") do
                local stack = inv:get_stack("main", i)
                if not stack:is_empty() then
                    minetest.add_item(pos, stack)
                end
            end
            minetest.add_item(pos, node.name)
            minetest.remove_node(pos)
        end
    }
end