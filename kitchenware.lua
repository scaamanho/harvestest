

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
--doug
