require("terrain")
require("settlement")

function init()
    GRAPHIC_ASSETS = {}

    local graphic_asset_names = {
        "terrain_flat_center",
        "terrain_flat_side",
        "terrain_hills_center",
        "terrain_hills_side",
        "terrain_mountains_center",
        "terrain_mountains_side"}

    for i, graphic_asset_name in pairs(graphic_asset_names) do
        GRAPHIC_ASSETS[graphic_asset_name] = WS:get_asset_id_for(graphic_asset_name)
    end
end

function render_map_node(mn)
    local gmn = graphic_map_node.new()

    gmn.map_node = mn.map_node
    gmn.layers:add(render_terrain_layer(mn.map_node))

    if mn.settlement then
        gmn.layers:add(render_settlement_layer(mn.settlement))
    end

    return gmn
end

function render_map(M)
    gm = graphic_map.new()

    local map_nodes = {}

    for i, mn in pairs(M.map_nodes) do
        map_nodes[mn.id] = {map_node = mn,}
    end

    for _, s in pairs(M.settlements) do
        map_nodes[s.position.id].settlement = s
    end


    for mn_id, mn in pairs(map_nodes) do
        gm.map_nodes:add(render_map_node(mn))
    end

    return gm
end
