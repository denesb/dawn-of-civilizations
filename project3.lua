require("random_map")

function world_init()
    w_info("Initializing world rules for the world "..W.name)

    COMPONENT_TYPES = {}
    COMPONENT_TYPES["terrain"] = "terrain"
    COMPONENT_TYPES["graphics"] = "graphics"
    COMPONENT_TYPES["position"] = "position"

    w_debug("Creating global banner table")
    BANNERS = {}
    BANNERS["stripes_horizontal"] = W:create_banner("stripes_horizontal")
    BANNERS["stripes_vertical"] = W:create_banner("stripes_vertical")
    BANNERS["bicolor_horizontal"] = W:create_banner("bicolor_horizontal")
    BANNERS["bicolor_vertical"] = W:create_banner("bicolor_vertical")

    w_debug("Creating global civilization table")
    CIVILIZATIONS = {}
    CIVILIZATIONS["generic"] = W:create_civilization("generic")

    w_debug("Creating global colors table")
    COLORS = {}
    COLORS["black"] = W:create_color("black")
    COLORS["grey"] = W:create_color("grey")
    COLORS["white"] = W:create_color("white")
    COLORS["red"] = W:create_color("red")
    COLORS["green"] = W:create_color("green")
    COLORS["blue"] = W:create_color("blue")
    COLORS["yellow"] = W:create_color("yellow")
    COLORS["orange"] = W:create_color("orange")
    COLORS["purple"] = W:create_color("purple")
end

function generate_map(M, size, seed)
    w_info("Generating map content for map `"..M.name.."'")

    generate_random_terrain(M, seed)
end

function map_init(M)
end
