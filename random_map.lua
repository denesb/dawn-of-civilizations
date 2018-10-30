require("terrain")

local TERRAIN_IDS = {}
local N = 0

do
    local i = 0
    for id, def in pairs(TERRAIN) do
        i = i + 1
        TERRAIN_IDS[i] = id
    end
    N = i
end

function generate_terrain(M, map_node)
    map_node.terrain_type = TERRAIN_IDS[math.random(N)]
end

function generate_random_terrain(M)
    for i, map_node in pairs(M.map_nodes) do
        generate_terrain(M, map_node)
    end
end

function place_player(M, player)
    i = math.random(M.map_nodes:size())

    map_node = M.map_nodes[i]

    settlement = M:create_settlement()
    settlement.type = "GENERIC"
    settlement.position = map_node
    settlement.owner = player
end

function place_players(M)
    for i, player in pairs(M.factions) do
        place_player(M, player)
    end
end
