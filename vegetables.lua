-- beetroot
harvestest.resgister_harvest("beetroot")
-- broccoli
harvestest.resgister_harvest("broccoli")
-- carrot
harvestest.resgister_harvest("carrot")
-- eggplant
harvestest.resgister_harvest("eggplant")
-- peanut
harvestest.resgister_harvest("peanut")
-- peas
harvestest.resgister_harvest("peas")
-- pepers (name, num_crops, steps, min_light)
harvestest.resgister_harvest("gpepper",5,7,10)
harvestest.resgister_harvest("rpepper",5,7,10)
--potato
harvestest.resgister_harvest("potato")




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




