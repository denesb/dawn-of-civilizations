TERRAIN = {
    FLAT = {
        center_image = "terrain_flat_center",
        side_image = "terrain_flat_side",
    },
    HILLS = {
        center_image = "terrain_hills_center",
        side_image = "terrain_hills_side",
    },
    MOUNTAINS = {
        center_image = "terrain_mountains_center",
        side_image = "terrain_mountains_side",
    },
}

function make_side_tile(terrain_id, row, column)
    gs = WS.grid_size
    t = graphic_grid_tile.new()

    t.x = row * gs
    t.y = column * gs
    t.width = gs
    t.height = gs
    t.asset_id = WS:get_asset_id_for(TERRAIN[terrain_id])

    return t
end

function make_center_tile(terrain)
    gs = WS.grid_size
    t = graphic_grid_tile.new()

    t.x = 1 * gs
    t.y = 1 * gs
    t.width = 2 * gs
    t.height = 2 * gs
    t.asset_id = WS:get_asset_id_for(TERRAIN[terrain_id])

    return t
end

function render_terrain_layer(mn)
    l = graphic_map_node_layer.new()
    terrain_id = mn.terrain_type

    l.grid_tiles[0] = make_side_tile(terrain_id, 1, 0)
    l.grid_tiles[1] = make_side_tile(terrain_id, 2, 0)
    l.grid_tiles[2] = make_side_tile(terrain_id, 0, 1)
    l.grid_tiles[3] = make_side_tile(terrain_id, 0, 2)
    l.grid_tiles[4] = make_center_tile(terrain_id, 0, 2)
    l.grid_tiles[5] = make_side_tile(terrain_id, 3, 1)
    l.grid_tiles[6] = make_side_tile(terrain_id, 3, 2)
    l.grid_tiles[7] = make_side_tile(terrain_id, 1, 3)
    l.grid_tiles[8] = make_side_tile(terrain_id, 2, 3)

    return l
end
