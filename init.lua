--[[
	HarvestTest mod for minetest
	Copyright (C) 2018 Santiago Caamaño  <scaamanho@gmail.com>
	hereby released under the GNU LESSER GENERAL PUBLIC LICENSE v3 license.
]]--
local modpath = minetest.get_modpath(minetest.get_current_modname())


-- salt
-- carrot
dofile(mopath .. "/carrot.lua")

-- potato
-- tomato






-- Modifyiing drops

for i = 1, 5 do
	minetest.override_item("default:grass_"..i, {
		drop = {
			max_items = 1,
			items = {
				--Test
				{items = {"harvestest:seed_carrot"}, rarity = 5},
				{items = {"harvestest:seed_potato"}, rarity = 5},
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
