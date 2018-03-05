
function harvestest.resgister_harvest(name,num_crops,steps,minlight)
  
  -- Set default values 
  if not num_crops then
    num_crops = 5
  end

  if not steps then
    steps = 4
  end

  if not minlight then
    minlight = 10
  end

  farming.register_plant("harvestest:"..name, {
    description = name.." seed",
    inventory_image = "harvestest_"..name.."_seed.png",
    steps = steps,
    minlight = minlight,
    fertility = {"grassland"},
  })
  
  -- item to seed
  minetest.register_craft({
    type = "shapeless",
    output = "harvestest:seed_"..name,
    recipe = {"harvestest:"..name}
  })

  
  -- make item eatable
  minetest.override_item("harvestest:"..name, {
      on_use = minetest.item_eat(1),
  })
  
  -- Override drop
  minetest.override_item("harvestest:"..name.."_"..steps, {
      drop = "harvestest:"..name.." "..num_crops
  })

  minetest.override_item("harvestest:seed_"..name, {
    --drawtype = "plantlike",
    visual_scale = 0.5,
  })
  
end

function harvestest.resgister_stick_harvest(name,node,num_crops,steps,minlight)
  -- TODO:
end


function harvestest.register_wakeware_food(food, recipe, cooktime, eat_value)

  -- register dough item
  minetest.register_craft({
    type = "shapeless",
    output = "harvestest:"..food.."_dough",
    recipe = recipe,
  })
  
  minetest.register_craftitem("harvestest:"..food.."_dough", {
    description = food.." Dough",
    on_use = function(itemstack, user, pointed_thing)
      minetest.do_item_eat(1, "harvestest:bakeware", itemstack, user, pointed_thing)
    end,
    inventory_image = "harvestest_"..food.."_dough.png",
  })
  
  -- registe baked item 
  minetest.register_craft({
    type = "cooking",
    cooktime = cooktime,
    output = "harvestest:"..food,
    recipe = "harvestest:"..food.."_dough",
  })
  
  minetest.register_craftitem("harvestest:"..food, {
    description = food,
    on_use = function(itemstack, user, pointed_thing)
      minetest.do_item_eat(eat_value, "harvestest:bakeware", itemstack, user, pointed_thing)
    end,
    inventory_image = "harvestest_"..food..".png",
  })
end

