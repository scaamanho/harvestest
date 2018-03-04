harvestest.resgister_harvest("potato")

-- crafting
minetest.register_craftitem("harvestest:potato_baked", {
	description = "Baken Potato",
	inventory_image = "harvestest_potato_baked.png",
	on_use = minetest.item_eat(5),
})

-- recipes
minetest.register_craft({
	type = "cooking",
	cooktime = 14,
	output = "harvestest:potato_baked",
	recipe = "harvestest:potato"
})



