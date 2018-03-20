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

-- dough
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:dough",
  recipe = {"harvestest:mixingbowl","bucket:bucket_water","farming:flour","harvestest:salt"},
  replacements = {{"harvestest:mixingbowl", "harvestest:mixingbowl"},
                  {"bucket:bucket_water","bucket:bucket_empty"}},
})

-- baked vegetables
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "harvestest:baked_apple",
	recipe = "default:apple"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "harvestest:carrot_baked",
	recipe = "harvestest:carrot"
})

minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:sugar",
	recipe = "harvestest:beetroot"
})


minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:potato_baked",
	recipe = "harvestest:potato"
})

-- peanut butter
minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:peanut_butter",
	recipe = "harvestest:peanut"
})


--Apple jelly
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:apple_jelly",
  recipe = {"default:apple","harvestest:sugar","harvestest:saucepan"},
  replacements = {{"harvestest:saucepan", "harvestest:saucepan"}},
})

-- Apple Jelly Sandwidh
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:apple_jelly_sandwidch 4",
  recipe = {"harvestest:cuttingboard","harvestest:peanut_butter","harvestest:apple_jelly","farming:bread"},
  replacements = {{"harvestest:cuttingboard", "harvestest:cuttingboard"}},
})

-- caramel
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:caramel",
  recipe = {"harvestest:sugar","harvestest:saucepan"},
  replacements = {{"harvestest:saucepan", "harvestest:saucepan"}},
})

-- apple caramel
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:apple_caramel",
  recipe = {"harvestest:caramel","default:apple","default:stick"},
  replacements = {{"harvestest:cuttingboard", "harvestest:cuttingboard"}},
})