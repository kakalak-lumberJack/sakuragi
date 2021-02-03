
minetest.register_decoration({
    name = "sakuragi:cherry_tree",
    deco_type = "schematic",
    place_on = {"bamboo_forest:dirt_with_bamboo_leaf_litter", "default:dirt_with_grass"},
    sidelen = 16,
    --fill_ratio = 0.0004,
    noise_params = {
        offset = -0.04,
        scale = 0.045,
        spread = {x=250, y=250, z=250},
        seed = 17,
        octaves = 2,
        persists = 0.75,
    },
    biomes = {"bamboo_forest", "snowy_bamboo_forest", "deciduous_forest"},
    schematic = sakuragi.cherry_tree_schematic,
    rotation = "random",
    flags = {
        place_center_x = true,
		place_center_z = true,
		force_placement = true,
    }
})
