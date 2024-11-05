$execute if score time_since_goat_horn_use check.callyourcat matches 1 run forceload add $(cat_UUID_latest_position_x) $(cat_UUID_latest_position_z)

$execute if score time_since_goat_horn_use check.callyourcat matches 4 run teleport @e[type=wolf,nbt={Owner:$(player_UUID),UUID:$(cat_UUID_from_horn)}] @s

$execute if score time_since_goat_horn_use check.callyourcat matches 7 run forceload remove $(cat_UUID_latest_position_x) $(cat_UUID_latest_position_z)



data remove storage callyourcat:root cat_UUID_latest_position_x 
data remove storage callyourcat:root cat_UUID_latest_position_z 
data remove storage callyourcat:root cat_UUID_from_horn
data remove storage callyourcat:root UUID
data remove storage callyourcat:root player_UUID
data remove storage callyourcat:root cat_name_from_horn

