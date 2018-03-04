farming.register_plant("harvestest:tomato", {
	description = "Tomato Stick Wirth Seeds",
	inventory_image = "harvestest_tomato_stick_seed.png",
	steps = 8,
	minlight = 12,
	fertility = {"grassland"},
})

-- item to seed
minetest.register_craft({
	type = "shapeless",
	output = "harvestest:tomato_seed",
	recipe = {"harvestest:tomato"}
})

minetest.register_craftitem("harvestest:tomato_seed", {
	description = "Tomato Seed (need a stick to grow)",
	inventory_image = "harvestest_tomato_seed.png",
	--on_use = minetest.item_eat(10),
})

-- change the drop of the already big grown tomato
minetest.override_item("harvestest:tomato_8", {
	drop = "harvestest:tomato 5"
})

-- make crop eatable
minetest.override_item("harvestest:tomato", {
	on_use = minetest.item_eat(1),
})

--seedwith stick
minetest.register_craft({
	type = "shapeless",
	output = "harvestest:seed_tomato",
	recipe = {"harvestest:tomato_seed", "default:stick"}
})

-- change the drawtype of the seed with stick
minetest.override_item("harvestest:seed_tomato", {
	drawtype = "plantlike",
	visual_scale = 2,
})

-- Override visual scale
for i = 1 , 8 do		
	minetest.override_item("harvestest:tomato_"..i, {
		drawtype = "plantlike",
		visual_scale = 2 ,
	})
end

-- crafting



--[[




minetest.register_craft({
	type = "shapeless",
	output = "harvestest:tomato_bread",
	recipe = {"farming:bread", "harvestest:tomato"}
})







-- change the drop of the already big grown tomato
minetest.override_item("harvestest:tomato_8", {
	drawtype = "plantlike",
	visual_scale = 1.5 ,
	drop = "harvestest:tomato 3"
})


]]--