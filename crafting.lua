-- salt
minetest.register_craftitem("harvestest:salt", {
	description = "Salt",
	inventory_image = "harvestest_salt.png",
})

-- TODO: Salt Block Compresed

-- dough
minetest.register_craftitem("harvestest:dough", {
  description = "Dough",
  on_use = minetest.item_eat(1),
	inventory_image = "harvestest_dough.png",
})

-- backed apple
minetest.register_craftitem("harvestest:baked_apple", {
	description = "Baken Apple",
	inventory_image = "harvestest_applebaked.png",
	on_use = minetest.item_eat(6)
})

minetest.register_craftitem("harvestest:apple_caramel", {
	description = "Apple Caramel",
	inventory_image = "harvestest_applecaramel.png",
	on_use = minetest.item_eat(7)
})

minetest.register_craftitem("harvestest:apple_jelly", {
  description = "Apple Jelly",
  on_use = minetest.item_eat(1),
	inventory_image = "harvestest_applejelly.png",
})



-- crafting sugar
minetest.register_craftitem("harvestest:sugar", {
	description = "Sugar",
	inventory_image = "harvestest_sugar.png",
})

minetest.register_craftitem("harvestest:caramel", {
	description = "Caramel",
  inventory_image = "harvestest_caramel.png",
  on_use = minetest.item_eat(2),
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

-- backed carrot
minetest.register_craftitem("harvestest:carrot_baked", {
	description = "Baken Carrot",
	inventory_image = "harvestest_carrotbaked.png",
	on_use = minetest.item_eat(5),
})


-- coffe drink
minetest.register_craftitem("harvestest:coffe_drink", {
	description = "Coffe Drink",
	inventory_image = "harvestest_coffedrink.png",
	on_use = minetest.item_eat(3),
})
-- coffe espresso
minetest.register_craftitem("harvestest:coffe_espresso", {
	description = "Espresso",
	inventory_image = "harvestest_coffeespresso.png",
	on_use = minetest.item_eat(8),
})

-- donuts
minetest.register_craftitem("harvestest:donut", {
	description = "Donut",
	inventory_image = "harvestest_donut.png",
	on_use = minetest.item_eat(6),
})
minetest.register_craftitem("harvestest:donut_powdered", {
	description = "Donut",
	inventory_image = "harvestest_donutpowdered.png",
	on_use = minetest.item_eat(7),
})
minetest.register_craftitem("harvestest:donut_jelly", {
	description = "Donut",
	inventory_image = "harvestest_donutjelly.png",
	on_use = minetest.item_eat(8),
})


minetest.register_craftitem("harvestest:eggplant_grilled", {
	description = "Eggplant Grilled",
	inventory_image = "harvestest_eggplantgrilled.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craftitem("harvestest:eggplant_stuffed", {
	description = "Eggplant Stuffed",
	inventory_image = "harvestest_eggplantstuffed.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("harvestest:peas_steamed", {
	description = "Steamed Peas",
	inventory_image = "harvestest_peassteamed.png",
	on_use = minetest.item_eat(5),
})

-- pies
-- apple pie
harvestest.register_wakeware_food("applepie", 
{"harvestest:bakeware","default:apple","harvestest:sugar","harvestest:dough"}, 
14, 10)

-- carrot cake
harvestest.register_wakeware_food("carrotcake", 
{"harvestest:bakeware","harvestest:carrot","harvestest:sugar","harvestest:dough"}, 
14, 10)

-- juices
harvestest.register_drinkable_food("tomato", {"harvestest:tomato","vessels:glass_bottle"}, 5)
harvestest.register_drinkable_food("carrot", {"harvestest:carrot","vessels:glass_bottle"}, 5)
harvestest.register_drinkable_food("apple", {"default:apple","vessels:glass_bottle"}, 5)