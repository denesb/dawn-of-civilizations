require("random_map")

function world_init()
    w_info("Initializing world rules for the world "..W.name)

    COMPONENT_TYPES = {}
    COMPONENT_TYPES["faction"] = "faction"
    COMPONENT_TYPES["graphics"] = "graphics"
    COMPONENT_TYPES["position"] = "position"
    COMPONENT_TYPES["terrain"] = "terrain"

    w_debug("Creating global banner table")
    BANNERS = {}
    BANNERS["Stripes Horizontal"] = W:create_banner("Stripes Horizontal")
    BANNERS["Stripes Vertical"] = W:create_banner("Stripes Vertical")
    BANNERS["Bicolor Horizontal"] = W:create_banner("Bicolor Horizontal")
    BANNERS["Bicolor Vertical"] = W:create_banner("Bicolor Vertical")

    w_debug("Creating global civilization table")
    CIVILIZATIONS = {}
    CIVILIZATIONS["generic"] = W:create_civilization("generic")

    w_debug("Creating global colors table")
    COLORS = {}
    COLORS["Black"] = W:create_color("Black")
    COLORS["Blue"] = W:create_color("Blue")
    COLORS["Cyan"] = W:create_color("Cyan")
    COLORS["Green"] = W:create_color("Green")
    COLORS["Grey"] = W:create_color("Grey")
    COLORS["Magenta"] = W:create_color("Magenta")
    COLORS["Orange"] = W:create_color("Orange")
    COLORS["Purple"] = W:create_color("Purple")
    COLORS["Red"] = W:create_color("Red")
    COLORS["White"] = W:create_color("White")
    COLORS["Yellow"] = W:create_color("Yellow")
end

function generate_random_map_content(M, size, seed)
    w_info("Generating map content for map `"..M.name.."'")

    generate_random_terrain(M, seed)
end

function map_init(M)
end
