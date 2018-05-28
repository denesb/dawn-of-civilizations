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
