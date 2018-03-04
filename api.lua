
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