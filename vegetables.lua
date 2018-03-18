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


-- crafting sugar
minetest.register_craftitem("harvestest:sugar", {
	description = "Sugar",
	inventory_image = "harvestest_sugar.png",
})
-- crafting potato baked
minetest.register_craftitem("harvestest:potato_baked", {
	description = "Baken Potato",
	inventory_image = "harvestest_potato_baked.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("harvestest:peanut_butter", {
	description = "Peanut Butter",
	inventory_image = "harvestest_peanut_butter.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("harvestest:apple_jelly", {
	description = "Apple Jelly",
	inventory_image = "harvestest_applejelly.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("harvestest:apple_jelly_sandwidch", {
	description = "Apple Jelly Sandwidch",
	inventory_image = "harvestest_applejellysandwidch.png",
	on_use = minetest.item_eat(10),
})



