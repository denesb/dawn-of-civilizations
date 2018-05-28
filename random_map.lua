require("terrain")
require("graphics")

local TERRAIN_KEYS = {}
local N = 0

do
    local i = 0
    for key, def in pairs(TERRAIN) do
        i = i + 1
        TERRAIN_KEYS[i] = key
    end
    N = i
end

function generate_terrain(M, map_node)
    i = math.random(N)

    terrain_entity = M:create_entity()

    terrain_component = terrain_entity:create_component(COMPONENT_TYPES.terrain)
    terrain_component.key = TERRAIN_KEYS[i]

    position_component = terrain_entity:create_component(COMPONENT_TYPES.position)
    position_component.map_node = map_node

    add_graphics_component_to_terrain(terrain_entity)
end

function generate_random_terrain(M)
    for i, map_node in pairs(M.map_nodes) do
        generate_terrain(M, map_node)
    end
end

function place_player(M, player)
    i = math.random(M.map_nodes:size())

    map_node = M.map_nodes[i]

    settlement_entity = M:create_entity()

    position_component = settlement_entity:create_component(COMPONENT_TYPES.position)
    position_component.map_node = map_node

    faction_component = settlement_entity:create_component(COMPONENT_TYPES.faction)
    faction_component.faction = player

    terrain_entity = find_terrain_for_node(map_node)

    add_graphics_component_to_settlement(settlement_entity, terrain_entity)
end

function place_players(M)
    for i, player in pairs(M.factions) do
        place_player(M, player)
    end
end
