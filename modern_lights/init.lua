-- Table pour l'API
modern_lights = {}

-- Fonction pour basculer l'état d'une lampe
function modern_lights.toggle_lampe(pos, node)
    local meta = minetest.get_meta(pos)
    local state = meta:get_int("state") or 0 -- 0: éteint, 1: allumé

    -- Basculer l'état
    state = 1 - state
    meta:set_int("state", state)

    -- Déterminer le nouveau nœud à placer
    local new_node_name = state == 1 and node.name:gsub("_off$", "_on") or node.name:gsub("_on$", "_off")
    minetest.swap_node(pos, {name = new_node_name, param2 = node.param2})

    -- Mettre à jour le texte d'information
    meta:set_string("infotext", state == 1 and "Lampe allumée" or "Lampe éteinte")
end

-- Fonction pour enregistrer une lampe
function modern_lights.register_lampe(name, def)
    -- Conserver les valeurs originales pour la lumière
    local light_on = def.light_on or 14
    local light_off = def.light_off or 0

    -- Créer les définitions pour les états "on" et "off"
    local def_on = table.copy(def)
    def_on.light_source = light_on
    def_on.drop = name .. "_off" -- Déposer la version "éteinte" lorsqu'elle est cassée
    def_on.groups = table.copy(def.groups or {})
    def_on.groups.not_in_creative_inventory = 1 -- Cacher dans l'inventaire créatif
    def_on.on_punch = function(pos, node, player, pointed_thing)
        if player and player:is_player() then
            modern_lights.toggle_lampe(pos, node)
        end
    end

    local def_off = table.copy(def)
    def_off.light_source = light_off
    def_off.on_punch = def_on.on_punch

    -- Enregistrer les deux nœuds
    minetest.register_node(name .. "_on", def_on)
    minetest.register_node(name .. "_off", def_off)
end

-- Charger les nœuds définis dans `nodes.lua`
dofile(minetest.get_modpath("modern_lights") .. "/nodes.lua")
