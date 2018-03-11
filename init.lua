--[[
	HarvestTest mod for minetest
	Copyright (C) 2018 Santiago Caamaño  <scaamanho@gmail.com>
	hereby released under the GNU LESSER GENERAL PUBLIC LICENSE v3 license.
]]--
harvestest = {}

local modpath = minetest.get_modpath(minetest.get_current_modname())
-- api
dofile(modpath .. "/api.lua")
--kitchenware
dofile(modpath .. "/kitchenware.lua")
-- carrot
dofile(modpath .. "/vegetables.lua")
-- tomato
dofile(modpath .. "/tomato.lua")
-- recipes
dofile(modpath .. "/recipes.lua")

-- Modifyiing drops

--[[
---------------
default:grass
default:dry_grass
default:junglegrass
default:papyrus
default:dirt_with_grass
default:bush_leaves
default:dry_shrub
---------------
* potato *
* beetroot *
* broccoli *
* pepper green *
* pepper red *
* eggplant *
* peas *
* peneaut *
* tomato *
]]--

for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {
		drop = {
			max_items = 2,
			items = {
				{items = {'farming:seed_wheat'},rarity = 5},
				{items = {'farming:broccoli'},rarity = 6},
				{items = {'farming:peas'},rarity = 7},  
				{items = {'default:grass_1'}},
			}
		}
	})
end


for i = 1, 5 do
	minetest.override_item("default:dry_grass_"..i, {
		drop = {
			max_items = 2,
			items = {
				{items = {"harvestest:gpepper"}, rarity = 7},
				{items = {"harvestest:rpepper"}, rarity = 6},
				{items = {"harvestest:peanut"}, rarity = 5},
				{items = {"default:dry_grass_1"}}
			}
		}
	})
end

minetest.override_item("default:junglegrass", {
	drop = {
		max_items = 2,
		items = {
			{items = {'farming:seed_cotton'},rarity = 8},
			{items = {'farming:eggplant'},rarity = 5},
			{items = {"default:dry_grass_1"}}
		}
	}
})


minetest.override_item("default:papyrus", {
	drop = {
		max_items = 2,
		items = {
			-- {items = {"harvestest:seed_corn"}, rarity = 5},
			{items = {"harvestest:tomato_seed"}, rarity = 5},
			{items = {"default:papyrus"}}
		}
	}
})


minetest.override_item("default:dirt_with_grass", {
	drop = {
		max_items = 2,
		items = {
			{items = {"harvestest:potato_seed"}, rarity = 8, "default:dirt"},
			{items = {"harvestest:beetroot_seed"}, rarity = 5, "default:dirt"},
			{items = {"default:dirt"}},
		}
	}
})

--[[
minetest.override_item("default:bush_leaves", {
	drop = {
		max_items = 1,
		items = {
			{items = {"harvestest:seed_huckleberry"}, rarity = 8, "default:bush_leaves"},
			{items = {"default:bush_leaves"}},
		}
	}
})

minetest.override_item("default:dry_shrub", {
	drop = {
		max_items = 1,
		items = {
			{items = {"harvestest:seed_strawberry"}, rarity = 8},
			{items = {"default:dry_shrub"}},
		}
	}
})



----------------------
for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {
		drop = {
			max_items = 1,
			items = {
				{items = {"farming:seed_wheat"}, rarity = 5},
				--Test
				{items = {"agriculture:seed_carrot"}, rarity = 5},
				{items = {"agriculture:seed_sugar_beet"}, rarity = 5},
				{items = {"agriculture:tomato_seed"}, rarity = 8, "default:dirt"},
				--End Test
				{items = {"default:grass_1"}}
			}
		}
	})
end

for i = 1, 5 do
	minetest.override_item("default:dry_grass_"..i, {
		drop = {
			max_items = 1,
			items = {
				{items = {"agriculture:seed_sugar_beet"}, rarity = 5},
				{items = {"default:dry_grass_1"}}
			}
		}
	})
end

minetest.override_item("default:junglegrass", {
	drop = {
		max_items = 1,
		items = {
			{items = {"agriculture:seed_carrot"}, rarity = 5},
			{items = {"default:dry_grass_1"}}
		}
	}
})


minetest.override_item("default:papyrus", {
	drop = {
		max_items = 1,
		items = {
			{items = {"agriculture:seed_corn"}, rarity = 5},
			{items = {"default:papyrus"}}
		}
	}
})


minetest.override_item("default:dirt_with_grass", {
	drop = {
		max_items = 1,
		items = {
			{items = {"agriculture:tomato_seed"}, rarity = 8, "default:dirt"},
			{items = {"agriculture:seed_sugar_beet"}, rarity = 12, "default:dirt"},
			{items = {"default:dirt"}},
		}
	}
})

minetest.override_item("default:bush_leaves", {
	drop = {
		max_items = 1,
		items = {
			{items = {"agriculture:seed_huckleberry"}, rarity = 8, "default:bush_leaves"},
			{items = {"default:bush_leaves"}},
		}
	}
})

minetest.override_item("default:dry_shrub", {
	drop = {
		max_items = 1,
		items = {
			{items = {"agriculture:seed_strawberry"}, rarity = 8},
			{items = {"default:dry_shrub"}},
		}
	}
})

]]--