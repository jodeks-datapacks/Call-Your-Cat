
scoreboard players add &time_since_goat_horn_use check.call_your_cat 1

execute if score &time_since_goat_horn_use check.call_your_cat matches 1 run function call_your_cat:teleport/teleport/forceload_add with storage call_your_cat:root data

$execute if score &teleported check.call_your_cat matches 0 if entity @e[nbt={UUID:$(cat_UUID_from_horn)}] run function call_your_cat:teleport/teleport/teleport with storage call_your_cat:root data

execute if score &time_since_goat_horn_use check.call_your_cat matches 25 run function call_your_cat:teleport/teleport/forceload_remove with storage call_your_cat:root data



execute if score &time_since_goat_horn_use check.call_your_cat matches 26.. run scoreboard players set &teleported check.call_your_cat 0

execute if score &time_since_goat_horn_use check.call_your_cat matches 26.. run scoreboard players set &mounted check.call_your_cat 0

execute if score &time_since_goat_horn_use check.call_your_cat matches 26.. run scoreboard players set &time_since_goat_horn_use check.call_your_cat 0

execute if score &time_since_goat_horn_use check.call_your_cat matches 1.. run schedule function call_your_cat:teleport/call_initiate 1t