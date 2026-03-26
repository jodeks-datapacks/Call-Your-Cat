schedule function call_your_cat:schedule_save_uuid 1s

# save cat position
execute as @e[type=cat,tag=cat_can_called] run function call_your_cat:teleport/save_uuid with storage call_your_cat:root data