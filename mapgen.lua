--[[minetest.register_on_generated( function(minp, maxp)
	--local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	--local area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	--local data = vm:get_data()
	if maxp.y > 0 then
		local under_air = minetest.find_nodes_in_area_under_air(minp, maxp, {"bamboo_forest:dirt_with_bamboo_leaf_litter"})
		for _, pos in ipairs(under_air) do 
			if math.random() < 0.0004 then
				minetest.remove_node(pos)
				minetest.place_schematic(pos, sakuragi.cherry_tree_schematic, "random", nil, true, {place_center_x = true, place_center_z = true})
			end
		end
	
	
		--if data[index] == minetest.get_content_id("bamboo_forest:dirt_with_bamboo_leaf_litter") then
		
		--if math.random() < 0.0004 then 
			--minetest.log(minetest.get_biome_data(pos).biome)
			--minetest.place_schematic_on_vmanip(vm, pos, sakuragi.cherry_tree_schematic, "random", nil, false)
		--end
	end
end)]]--


minetest.register_decoration({
    name = "sakuragi:cherry_tree",
    deco_type = "schematic",
    place_on = {"bamboo_forest:dirt_with_bamboo_leaf_litter", "default:dirt_with_grass"},
    place_offset_y = -1,
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
