require "terrain"

function world_init()
    w_info("Initializing world rules for the world "..W.name)

    w_debug("Creating global component-type table")

    COMPONENT_TYPES = {}
    for i,c in pairs(W.component_types) do
       COMPONENT_TYPES[c.name] = c
    end

    w_debug("Creating global banner table")

    BANNERS = {}
    for i,b in pairs(W.banners) do
       BANNERS[b.name] = b
    end

    w_debug("Creating global civilizaation table")

    CIVILIZATIONS = {}
    for i,c in pairs(W.civilizations) do
       CIVILIZATIONS[c.name] = c
    end
end

function generate_map(M, size)
    w_info("Generating map content for map `"..M.name.."'")

    M:generateMapNodes(size)
end

function map_init(M)
end
