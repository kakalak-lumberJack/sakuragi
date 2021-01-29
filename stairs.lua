if stairsplus then
    stairsplus:register_all("sakuragi", "wood", "sakuragi:wood", {
        description = "Cherry Wood",
        tiles = {"sakuragi_wood.png"},
        groups = {choppy=2,oddly_breakable_by_hand=2,flammable=10,wood=1},
        sounds = default.node_sound_wood_defaults(),
    })

    stairsplus:register_all("sakuragi", "tree", "sakuragi:tree", {
        description = "Cherry Tree",
        tiles = {"sakuragi_tree_top.png", "sakuragi_tree.png", "sakuragi_tree.png"},
        groups = {choppy=2,oddly_breakable_by_hand=2,flammable=10,wood=1},
        sounds = default.node_sound_wood_defaults(),
    })

elseif stairs then
    stairs.register_stair_and_slab("wood", "sakuragi:wood",
        {choppy=2,oddly_breakable_by_hand=2,flammable=10,wood=1},
        {"sakuragi_wood.png"},
        "Cherry Blossom Wood Stair",
        "Cherry Blossom Wood Slab",
        default.node_sound_wood_defaults()
    )
    
    stairs.register_stair_and_slab("tree", "sakuragi:tree",
        {choppy=2,oddly_breakable_by_hand=2,flammable=10,wood=1},
        {"sakuragi_tree_top.png", "sakuragi_tree.png", "sakuragi_tree.png"},
        "Cherry Blossom Wood Stair",
        "Cherry Blossom Wood Slab",
        default.node_sound_wood_defaults()
    )
end