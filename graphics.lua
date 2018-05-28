require("terrain")

local TERRAIN_IMAGES = {
    TUNDRA_FLAT = "terrain/cold.png",
    TUNDRA_HILLS = "terrain/cold.png",
    TAIGA_FLAT = "terrain/cold.png",
    TAIGA_HILLS = "terrain/cold.png",
    -- MODERATE, WET
    GRASSLAND = "terrain/moderate_wet.png",
    FOREST = "terrain/moderate_wet.png",
    SWAMP = "terrain/swamp.png",
    HILLS = "terrain/moderate_wet.png",
    FORESTY_HILLS = "terrain/moderate_wet.png",
    -- MODERATE, DRY
    STEPPE_FLAT = "terrain/moderate_dry.png",
    STEPPE_FOREST = "terrain/moderate_dry.png",
    STEPPE_HILLS = "terrain/moderate_dry.png",
    STEPPE_FORESTY_HILLS = "terrain/moderate_dry.png",
    -- HOT, VERY_WET
    JUNGLE = "terrain/hot_very_wet.png",
    JUNGLE_HILLS = "terrain/hot_very_wet.png",
    JUNGLE_SWAMP = "terrain/swamp.png",
    -- HOT VERY_DRY
    DESERT = "terrain/hot_dry.png",
    DESERT_DUNES = "terrain/hot_dry.png",
    -- Mountains
    LOW_MOUNTAINS = "terrain/moderate_wet.png",
    HIGH_MOUNTAINS = "terrain/moderate_wet.png",
}

function add_graphics_component_to_terrain(terrain_entity)
    graphics_component = terrain_entity:create_component(COMPONENT_TYPES.graphics)
    graphics_component.x = 0
    graphics_component.y = 0
    graphics_component.z = 0
    graphics_component.path = TERRAIN_IMAGES[entity.terrain.key]
end
