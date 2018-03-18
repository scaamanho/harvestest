
--bakeware

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

-- Cutting board
minetest.register_craftitem("harvestest:cuttingboard", {
	description = "Cutting Board",
	inventory_image = "harvestest_cuttingboard.png",
})

minetest.register_craft({
  output = "harvestest:cuttingboard",
  recipe = {{"default:steel_ingot","",""},
  {"","default:stick",""},
  {"","","group:wood"}}
})

---- Saucepan


minetest.register_craftitem("harvestest:saucepan", {
	description = "Saucepan",
	inventory_image = "harvestest_saucepan.png",
})

minetest.register_craft({
  output = "harvestest:saucepan",
  recipe = {{"default:steel_ingot","",""},
  {"default:stick","",""},
  {"","",""}}
})