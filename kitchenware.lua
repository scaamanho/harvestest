
--bakeware
recipe=

minetest.register_craft({
  output = "harvestest:bakeware",
  recipe = {{"default:tin_ingot","default:tin_ingot","default:tin_ingot"},
  {"default:tin_ingot","","default:tin_ingot"},
  {"default:tin_ingot","default:tin_ingot","default:tin_ingot"}}
})


minetest.register_craftitem("harvestest:bakeware", {
	description = "Bakeware",
	inventory_image = "harvestest_bakeware.png",
})

-- mixing bowl
minetest.register_craft({
  output = "harvestest:mixingbowl",
  recipe = {{"group:wood","default:stick ","group:wood"},
  {"","group:wood",""},
  {"","",""}}
})


minetest.register_craftitem("harvestest:mixingbowl", {
	description = "Mixing Bowl",
	inventory_image = "harvestest_mixingbowl.png",
})
