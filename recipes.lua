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

-- dough
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:dough",
  recipe = {"harvestest:mixingbowl","bucket:bucket_water","farming:flour","harvestest:salt"},
  replacements = {{"harvestest:mixingbowl", "harvestest:mixingbowl"},
                  {"bucket:bucket_water","bucket:bucket_empty"}},
})


minetest.register_craftitem("harvestest:dough", {
  description = "Dough",
  on_use = minetest.item_eat(1),
	inventory_image = "harvestest_dough.png",
})

-- apple pie
harvestest.register_wakeware_food("applepie", 
{"harvestest:bakeware","default:apple","harvestest:sugar","harvestest:dough"}, 
14, 10)

-- carrot cake
harvestest.register_wakeware_food("carrotcake", 
{"harvestest:bakeware","harvestest:carrot","harvestest:sugar","harvestest:dough"}, 
14, 10)
