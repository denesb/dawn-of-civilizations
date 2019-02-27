require("terrain")

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

    gmn.layers:add(render_terrain_layer(mn))

    return gmn
end

function render_map(M)
    gm = graphic_map.new()

    for i, map_node in pairs(M.map_nodes) do
        gm.map_nodes:add(render_map_node(map_node))
    end

    return gm
end
