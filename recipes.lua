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

-- apple pie dough
minetest.register_craft({
  type = "shapeless",
  output = "harvestest:applepie_dough",
  recipe = {"harvestest:bakeware","default:apple","harvestest:sugar","harvestest:dough"},
})

minetest.register_craftitem("harvestest:applepie_dough", {
  description = "Apple Pie Dough",
  on_use = function(itemstack, user, pointed_thing)
    minetest.do_item_eat(1, "harvestest:bakeware", itemstack, user, pointed_thing)
  end,
	inventory_image = "harvestest_applepie_dough.png",
})

-- apple pie 
minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:applepie",
  recipe = "harvestest:applepie_dough",
  --replacements = {{"harvestest:applepie_dough", "harvestest:bakeware"}},
})

minetest.register_craftitem("harvestest:applepie", {
  description = "Apple Pie",
  on_use = function(itemstack, user, pointed_thing)
    minetest.do_item_eat(10, "harvestest:bakeware", itemstack, user, pointed_thing)
  end,
  inventory_image = "harvestest_applepie.png",
  replacements = {{"harvestest:applepie", "harvestest:bakeware"}},
})