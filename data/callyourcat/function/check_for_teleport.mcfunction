scoreboard players set &UUID_check check.callyourcat 1


data modify storage callyourcat:root cat_UUID_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:2b}}}}}] SelectedItem.components."minecraft:custom_data".cat_call.UUID

data modify storage callyourcat:root UUID set from entity @s UUID

function callyourcat:check_cat_uuid_match_horn_uuid with storage callyourcat:root



execute if score &UUID_check check.callyourcat matches 0 run data modify storage callyourcat:root player_UUID set from entity @s UUID

execute if score &UUID_check check.callyourcat matches 0 run data modify storage callyourcat:root cat_name_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:2b}}}}}] SelectedItem.components."minecraft:custom_name"



execute if score &UUID_check check.callyourcat matches 0 run function callyourcat:get_latest_position with storage callyourcat:root


execute if score &UUID_check check.callyourcat matches 0 run execute store result score cat_UUID_lates_position_x store_position.callyourcat run data get storage callyourcat:root cat_UUID_latest_position_x

execute if score &UUID_check check.callyourcat matches 0 run execute store result score cat_UUID_lates_position_z store_position.callyourcat run data get storage callyourcat:root cat_UUID_latest_position_z

execute if score &UUID_check check.callyourcat matches 0 run execute store result storage callyourcat:root cat_UUID_latest_position_x int 1 run scoreboard players get cat_UUID_lates_position_x store_position.callyourcat

execute if score &UUID_check check.callyourcat matches 0 run execute store result storage callyourcat:root cat_UUID_latest_position_z int 1 run scoreboard players get cat_UUID_lates_position_z store_position.callyourcat


execute if score &UUID_check check.callyourcat matches 0 run function callyourcat:teleport_cat with storage callyourcat:root


scoreboard players set &UUID_check check.callyourcat 1




