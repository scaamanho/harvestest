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

-- coffe drrink
minetest.register_craft({
	type = "cooking",
	cooktime = 5,
	output = "harvestest:coffe_drink",
	recipe = "harvestest:coffe"
})

-- coffe espresso
minetest.register_craft({
  output = "harvestest:coffe_espresso",
  recipe = {{"harvestest:coffe","harvestest:coffe",""},{"harvestest:coffe","harvestest:sugar",""},{"","",""}},
  replacements = {{"harvestest:cuttingboard", "harvestest:cuttingboard"}},
})

-- donuts
minetest.register_craft({
	type = "cooking",
	cooktime = 7,
	output = "harvestest:donut",
	recipe = "harvestest:dough"
})
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:donut_powdered",
  recipe = {"harvestest:donut","harvestest:sugar"}
})
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:donut_jelly",
  recipe = {"harvestest:donut","harvestest:apple_jelly"}
})


-- grilled egplant
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "harvestest:eggplant_grilled",
	recipe = "harvestest:eggplant"
})

minetest.register_craft({
  type = "shapeless",
  output = "harvestest:eggplant_stuffed",
  recipe = {"harvestest:eggplant","harvestest:gpepper","harvestest:broccoli","harvestest:peas"}
})

minetest.register_craft({
  type = "shapeless",
  output = "harvestest:eggplant_stuffed",
  recipe = {"harvestest:eggplant","harvestest:rpepper","harvestest:broccoli","harvestest:peas"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "harvestest:peas_steamed",
	recipe = "harvestest:peas"
})