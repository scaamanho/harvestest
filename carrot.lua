farming.register_plant("harvesttest:carrot", {
	description = "Carrot Seed",
	inventory_image = "harvesttest_carrot_seed.png",
	steps = 4,
	minlight = 10,
	fertility = {"grassland"},
})


-- crafting

minetest.register_craft({
	type = "shapeless",
	output = "harvesttest:seed_carrot",
	recipe = {"harvesttest:carrot"}
})


-- make carrot eatable
minetest.override_item("harvesttest:carrot", {
    on_use = minetest.item_eat(1),
})

-- Override drop
minetest.override_item("harvesttest:carrot_4", {
    drop = "harvesttest:carrot 2"
})



