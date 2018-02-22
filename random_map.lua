require("terrain")

local TERRAIN_IMAGES = {
    TUNDRA_FLAT = "cold.png",
    TUNDRA_HILLS = "cold.png",
    TAIGA_FLAT = "cold.png",
    TAIGA_HILLS = "cold.png",
    -- MODERATE, WET
    GRASSLAND = "moderate_wet.png",
    FOREST = "moderate_wet.png",
    SWAMP = "moderate_wet.png",
    HILLS = "moderate_wet.png",
    FORESTY_HILLS = "moderate_wet.png",
    -- MODERATE, DRY
    STEPPE_FLAT = "moderate_dry.png",
    STEPPE_FOREST = "moderate_dry.png",
    STEPPE_HILLS = "moderate_dry.png",
    STEPPE_FORESTY_HILLS = "moderate_dry.png",
    -- HOT, VERY_WET
    JUNGLE = {"Jungle", CLIMATE.HOT, PRECIPITATION.VERY_WET, RELIEF.FLAT, VEGETATION.DENSE_FOREST},
    JUNGLE_HILLS = {"Jungle hills", CLIMATE.HOT, PRECIPITATION.VERY_WET, RELIEF.HILLS, VEGETATION.DENSE_FOREST},
    JUNGLE_SWAMP = {"Jungle swamp", CLIMATE.HOT, PRECIPITATION.VERY_WET, RELIEF.HILLS, VEGETATION.SWAMP},
    -- HOT VERY_DRY
    DESERT = {"Desert", CLIMATE.HOT, PRECIPITATION.VERY_DRY, RELIEF.FLAT, VEGETATION.NONE},
    DESERT_DUNES = {"Desert dunes", CLIMATE.HOT, PRECIPITATION.VERY_DRY, RELIEF.HILLS, VEGETATION.NONE},
    -- Moutains
    LOW_MOUNTAINS = {"Low mountains", CLIMATE.MODERATE, PRECIPITATION.WET, RELIEF.LOW_MOUNTAINS, VEGETATION.DENSE_FOREST},
    HIGH_MOUNTAINS = {"High mountains", CLIMATE.COLD, PRECIPITATION.WET, RELIEF.HIGH_MOUNTAINS, VEGETATION.NONE},



local TERRAINS = {}
local N = 0

do
    local i = 0
    for terrain_def in TERRAIN do
        i = i + 1
        TERRAINS[i] = terrain_def
    end
    N = i
end

function generate_terrain(M, map_node)
    terrain_entity = M:create_entity()

    terrain_component = terrain_entity:create_component(COMPONENT_TYPES.terrain)
    terrain_component.terrain = TERRAINS[table.getn(TERRAINS)]

    graphics_component = terrain_entity:create_component(COMPONENT_TYPES.graphics)
    graphics_component.x = 0
    graphics_component.y = 0
    graphics_component.z = 0
    graphics_component.path = "terrain/moderate_wet.png"

    position_component = terrain_entity:create_component(COMPONENT_TYPES.position)
    position_component.map_node = map_node
end


function generate_random_terrain(M, seed)
    math.randomseed(seed)
    print(math.random())

    for i, map_node in pairs(M.map_nodes) do
        generate_terrain(M, map_node)
    end
end
