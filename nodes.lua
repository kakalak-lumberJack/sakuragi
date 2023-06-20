
minetest.register_node("sakuragi:tree", {
	description = "Cherry Blossom Tree",
	tiles = {"sakuragi_tree_top.png", "sakuragi_tree_top.png", "sakuragi_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree=1,choppy=2,oddly_breakable_by_hand=1,flammable=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("sakuragi:wood", {
	description = "Cherry Blossom Wood Planks",
	tiles = {"sakuragi_wood.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=10,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("sakuragi:sapling", {
	description = "Cherry Blossom Tree Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"sakuragi_sapling.png"},
	inventory_image = "sakuragi_sapling.png",
	wield_image = "sakuragi_sapling.png",
	paramtype = "light",
	walkable = false,
	is_ground_content = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy=2,dig_immediate=3,flammable=10,attached_node=1,sapling=1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("sakuragi:leaves", {
	description = "Cherry Blossom Leaves",
	drawtype = "allfaces",
	waving = 1,
	tiles = {"sakuragi_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=10, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"sakuragi:sapling"},
				rarity = 20,
			},
			{
				items = {"sakuragi:leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = sakuragi.after_place_leaves,
})

minetest.register_node("sakuragi:leaves_white", {
	description = "White Cherry Blossom Leaves",
	drawtype = "allfaces",
	waving = 1,
	tiles = {"sakuragi_leaves_white.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy=3, leafdecay=3, flammable=10, leaves=1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"sakuragi:sapling"},
				rarity = 20,
			},
			{
				items = {"sakuragi:leaves_white"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = sakuragi.after_place_leaves,
})

default.register_leafdecay({
    trunks = {"sakuragi:tree"},
    leaves = {"sakuragi:leaves", "sakuragi:leaves_white"},
    radius = 3,
})
		
doors.register_door("sakuragi:tobira", {
		tiles = {{ name = "sakuragi_door_full.png", backface_culling = true }},
		description = "Japanese Tobira",
		inventory_image = "sakuragi_door.png",
		protected = true,
		groups = { snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 2 },
		recipe = {
			{"default:stick",  "default:paper"},
			{"default:paper",  "default:stick"},
			{"sakuragi:tree", "sakuragi:tree"}
		}
})
default.register_fence("sakuragi:fence", {
	description = "Cherry Blossom Wood Fence",
	texture = "sakuragi_wood.png",
	material = "sakuragi:wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})
doors.register_fencegate("sakuragi:fencegate", {
	description = "Cherry Blossom Wood Fence Gate",
	texture = "sakuragi_wood.png",
	material = "sakuragi:swood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2}
})
