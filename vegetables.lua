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



-- pies
-- apple pie
harvestest.register_wakeware_food("applepie", 
{"harvestest:bakeware","default:apple","harvestest:sugar","harvestest:dough"}, 
14, 10)

-- carrot cake
harvestest.register_wakeware_food("carrotcake", 
{"harvestest:bakeware","harvestest:carrot","harvestest:sugar","harvestest:dough"}, 
14, 10)




