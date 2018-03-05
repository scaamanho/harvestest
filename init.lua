--[[
	HarvestTest mod for minetest
	Copyright (C) 2018 Santiago Caamaño  <scaamanho@gmail.com>
	hereby released under the GNU LESSER GENERAL PUBLIC LICENSE v3 license.
]]--
harvestest = {}

local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath .. "/api.lua")

--kitchenware
dofile(modpath .. "/kitchenware.lua")
-- salt
dofile(modpath .. "/salt.lua")
-- carrot
dofile(modpath .. "/carrot.lua")
-- potato
dofile(modpath .. "/potato.lua")
-- beeteoot
dofile(modpath .. "/beetroot.lua")
--broccoli
dofile(modpath .. "/broccoli.lua")
--peppers
dofile(modpath .. "/pepper.lua")
--eggplant
dofile(modpath .. "/eggplant.lua")
--peanut
dofile(modpath .. "/peanut.lua")

-- tomato
dofile(modpath .. "/tomato.lua")





-- Modifyiing drops

for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {
		drop = {
			max_items = 1,
			items = {
				--Test
				--{items = {"harvestest:seed_carrot"}, rarity = 5},
				--{items = {"harvestest:seed_potato"}, rarity = 5},
				--{items = {"harvestest:seed_beetroot"}, rarity = 5},
				--{items = {"harvestest:tomato_seed"}, rarity = 1},
				--{items = {"harvestest:seed_broccoli"}, rarity = 1},
				--{items = {"harvestest:seed_rpepper"}, rarity = 2},
				--{items = {"harvestest:seed_gpepper"}, rarity = 2},
				--{items = {"harvestest:seed_eggplant"}, rarity = 2},
				{items = {"harvestest:seed_peanut"}, rarity = 2},
				--End Test
				{items = {"default:grass_1"}}
			}
		}
	})
end

--[[
for i = 1, 5 do
	minetest.override_item("default:dry_grass_"..i, {
		drop = {
			max_items = 1,
			items = {
				{items = {"harvestest:seed_sugar_beet"}, rarity = 5},
				{items = {"default:dry_grass_1"}}
			}
		}
	})
end

minetest.override_item("default:junglegrass", {
	drop = {
		max_items = 1,
		items = {
			{items = {"harvestest:seed_carrot"}, rarity = 5},
			{items = {"default:dry_grass_1"}}
		}
	}
})


minetest.override_item("default:papyrus", {
	drop = {
		max_items = 1,
		items = {
			{items = {"harvestest:seed_corn"}, rarity = 5},
			{items = {"default:papyrus"}}
		}
	}
})


minetest.override_item("default:dirt_with_grass", {
	drop = {
		max_items = 1,
		items = {
			{items = {"harvestest:tomato_seed"}, rarity = 8, "default:dirt"},
			{items = {"harvestest:seed_sugar_beet"}, rarity = 12, "default:dirt"},
			{items = {"default:dirt"}},
		}
	}
})

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
]]--
