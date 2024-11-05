scoreboard players enable @a help.callyourcat

execute as @a if score @s help.callyourcat matches 1 run function callyourcat:trigger_help

scoreboard players enable @a change_goat_horn_to_call_cat

scoreboard players enable @a get_horn_to_call_cat

execute as @a if score @s get_horn_to_call_cat matches 1 run function callyourcat:get_horn_to_call


tag @a[scores={use_goat_horn_cat=1},limit=1] add calling_cat

execute as @a[scores={use_goat_horn_cat=1}] run function callyourcat:check_for_teleport

execute as @a[scores={use_goat_horn_cat=1}] run scoreboard players add time_since_goat_horn_use check.callyourcat 1

tag @a[scores={use_goat_horn_cat=0},limit=1] remove calling_cat

execute if score time_since_goat_horn_use check.callyourcat matches 8 run scoreboard players set @a use_goat_horn_cat 0
execute if score time_since_goat_horn_use check.callyourcat matches 8 run scoreboard players set time_since_goat_horn_use check.callyourcat 0


execute as @e[type=wolf,tag=cat_can_be_called] run function callyourcat:save_uuid with storage callyourcat:root



