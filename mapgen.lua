
minetest.register_decoration({
    name = "sakuragi:cherry_tree",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = -0.033,
        scale = -0.045,
        spread = {x=200, y=200, z=200},
        seed = 427,
        octaves = 2,
        persists = 0.85,
    },
    biomes = {"deciduous_forest"},
    schematic = sakuragi.cherry_tree_schematic,
    rotation = "random",
    flags = {
        place_center_x = true,
		place_center_z = true,
		force_placement = true,
    }
})

minetest.register_decoration({
    name = "sakuragi:cherry_tree_white",
    deco_type = "schematic",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    noise_params = {
        offset = -0.036,
        scale = -0.045,
        spread = {x=200, y=200, z=200},
        seed = 427,
        octaves = 2,
        persists = 0.75,
    },
    biomes = {"deciduous_forest"},
    schematic = sakuragi.cherry_tree_white_schematic,
    rotation = "random",
    flags = {
        place_center_x = true,
		place_center_z = true,
		force_placement = true,
    }
})