harvestest.resgister_harvest("beetroot")

-- crafting
minetest.register_craftitem("harvestest:sugar", {
	description = "Sugar",
	inventory_image = "harvestest_sugar.png",
})



minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:sugar",
	recipe = "harvestest:beetroot"
})






