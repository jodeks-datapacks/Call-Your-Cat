scoreboard objectives add jodek.config dummy
execute unless score &call_your_cat_load_message jodek.config = &call_your_cat_load_message jodek.config run scoreboard players set &call_your_cat_load_message jodek.config 1
execute unless score &call_your_cat_advancements jodek.config = &call_your_cat_advancements jodek.config run scoreboard players set &call_your_cat_advancements jodek.config 1

scoreboard objectives add call_your_cat.check dummy

scoreboard objectives add call_your_cat.image dummy

scoreboard objectives add call_your_cat.config trigger
scoreboard players set @a call_your_cat.config 0

scoreboard players set &time_since_goat_horn_use call_your_cat.check 0

scoreboard players set &teleported call_your_cat.check 0

scoreboard players set &mounted call_your_cat.check 0

function call_your_cat:config/image

schedule function call_your_cat:app/schedule/save/run 1s

data modify storage call_your_cat:root data.target set value call_your_cat

schedule function call_your_cat:lib_check 1s

scoreboard objectives add call_your_cat.sneak_time custom:sneak_time
scoreboard players set @a call_your_cat.sneak_time 0