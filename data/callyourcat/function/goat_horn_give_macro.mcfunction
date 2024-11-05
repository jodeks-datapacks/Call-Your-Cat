$execute as @s[scores={change_goat_horn_to_call_cat=0}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:ponder_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=1}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:sing_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=2}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:seek_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=3}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:feel_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=4}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:admire_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=5}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:call_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=6}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:yearn_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_cat=7}] run give @s goat_horn[custom_name='$(cat_name)',custom_data={tag:{goat_horn_to_call_cat:2b},cat_call:{UUID:$(cat_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:dream_goat_horn"] 1


data remove storage callyourcat:root UUID
data remove storage callyourcat:root horse_UUID_to_call
data remove storage callyourcat:root horse_name