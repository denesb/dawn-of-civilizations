function render_settlement_layer(s)
    local l = graphic_map_node_layer.new()

    local gs = WS.grid_size
    local t = graphic_grid_tile.new()

    t.x = 1 * gs
    t.y = 1 * gs
    t.width = 2 * gs
    t.height = 2 * gs
    t.asset_id = WS:get_asset_id_for("settlement_generic")

    l.grid_tiles:add(t)

    return l
end
