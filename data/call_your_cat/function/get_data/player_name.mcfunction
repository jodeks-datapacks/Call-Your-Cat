execute at @s run loot spawn ~ ~100 ~ loot call_your_cat:player_head
data modify storage call_your_cat:root data.player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{call_your_cat_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{call_your_cat_playername:1b}}}}]