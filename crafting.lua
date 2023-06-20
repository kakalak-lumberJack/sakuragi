--Obtain 4 planks
minetest.register_craft({
	output = "sakuragi:wood 4",
	recipe = {
		{"sakuragi:tree"},
	}
})

--Leaves » Dye
minetest.register_craft({
	output = "dye:pink 2",
	recipe = {
		{"sakuragi:leaves"},
	}
})

minetest.register_craft({
	output = "sakuragi:tobira",
	recipe = {
		{"default:paper",  "default:stick"},
		{"default:stick",  "default:paper"},
		{"sakuragi:tree", "sakuragi:tree"}
	}
})

--"Huhuhuh" -The Pyro (TF2)
minetest.register_craft({
	type = "fuel",
	recipe = "sakuragi:tree",
	burntime = 250,
})

minetest.register_craft({
	type = "fuel",
	recipe = "sakuragi:sapling",
	burntime = 35,
})

minetest.register_craft({
	type = "fuel",
	recipe = "sakuragi:leaves",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",
	recipe = "sakuragi:leaves_white",
	burntime = 15,
})