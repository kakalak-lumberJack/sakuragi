--Red Trees (AKA Fiery Trees)
--Put together by Glory!.
--Uses code modified from Default and Tiny Trees (bas080)
sakuragi = {}
----------------------------------
dofile(minetest.get_modpath("sakuragi").."/nodes.lua")
dofile(minetest.get_modpath("sakuragi").."/stairs.lua")
dofile(minetest.get_modpath("sakuragi").."/crafting.lua")

local gen_sakuragi_tree = function(leaf_name)
    local schema = {}
    schema.size={x=5, y=10, z=5}
    schema.yslice_prob = {}
    schema.yslice_prob[1] = {{ypos = 2, prob = 128}, {ypos = 10, prob = 160}}
    schema.data = {}
    if leaf_name == nil then
        leaf_name = "sakuragi:leaves"
    end
    for z = 1, schema.size.z do
        for y = 1, schema.size.y do
            for x = 1, schema.size.x do
                if y <= 4 then
                    if x == 3 and z == 3 then
                        table.insert(schema.data, {name  = "sakuragi:tree"})
                    else
                        table.insert(schema.data, {name  = "ignore"})
                    end
                elseif y == 5 then
                    if x == 3 and z == 3 and y == 5 then 
                        table.insert(schema.data, {name  = "sakuragi:tree"})
                    elseif x > 1 and x < 5 and z > 1 and z < 5 then
                        table.insert(schema.data, {name  = leaf_name})
                    else
                        table.insert(schema.data, {name  = "ignore"}) 
                    end
                elseif y == 6 or y == 8 then
                    if x == 3 and z == 3 then 
                        table.insert(schema.data, {name  = "sakuragi:tree"})
                    elseif (x == 1 or x == 5) and (z == 1 or z == 5) then
                        table.insert(schema.data, {name  = leaf_name, param1 = 100})
                    else
                        table.insert(schema.data, {name  = leaf_name})
                    end
                elseif y == 7 then
                    if x == 3 and z == 3 then 
                        table.insert(schema.data, {name  = "sakuragi:tree"})
                    elseif (x == 1 or x == 5) and (z == 1 or z == 5) then
                        table.insert(schema.data, {name  = leaf_name, param1 = 100})
                    else
                        table.insert(schema.data, {name  = leaf_name})
                    end
                elseif y == 9 then
                    if x > 1 and x < 5 and z > 1 and z < 5 then
                        if x == 3 or z == 3 then
                            table.insert(schema.data, {name  = leaf_name})
                        else
                            table.insert(schema.data, {name  = leaf_name, param1 = 100})
                        end
                    else
                        table.insert(schema.data, {name  = "ignore"})
                    end
                elseif y == 10 then
                    if x == 3 and z == 3 then
                        table.insert(schema.data, {name  = leaf_name})
                    else
                        table.insert(schema.data, {name  = "ignore"})
                    end
                end

            end
        end
    end
    return schema
end

sakuragi.cherry_tree_schematic = gen_sakuragi_tree()
sakuragi.cherry_tree_white_schematic = gen_sakuragi_tree("sakuragi:leaves_white")

dofile(minetest.get_modpath("sakuragi").."/mapgen.lua")


-- Sapling Growth
minetest.register_abm({
	nodenames = {"sakuragi:sapling"},
	interval = 370,
	chance = 1,
	action = function(pos, node)
		if not default.can_grow(pos) then
			return
		end
        local schematic = sakuragi.cherry_tree_schematic
        if math.random() < 1/3 then
            schematic = sakuragi.cherry_tree_white_schematic
        end
		minetest.log("action", "A cherry blossom sapling grows into a cherry tree at "..minetest.pos_to_string(pos))
        pos.y = pos.y - 1
		minetest.place_schematic(pos, schematic, "random", {}, true, {place_center_x = true, place_center_z = true})
    end
})


