-- salt

minetest.register_craft( {
	type = "cooking",
	cooktime = 5,
	output = "harvestest:salt 6",
	recipe = "bucket:bucket_water",
	replacements = {
		{"bucket:bucket_water", "bucket:bucket_empty"}
	},
}) 

minetest.register_craftitem("harvestest:salt", {
	description = "Salt",
	inventory_image = "harvestest_salt.png",
})

-- TODO: Salt Block Compresed

