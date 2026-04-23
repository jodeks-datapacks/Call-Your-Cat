advancement revoke @s only call_your_cat:used/goat_horn_selected

scoreboard players set &UUID_check call_your_cat.check 1

execute as @s run function jodek:api/data/get/selected_item_stored_uuid with storage call_your_cat:root data

execute unless data storage call_your_cat:root data.UUID_from_item run return run function call_your_cat:app/feedback/fail {translate:"call_your_cat.fail.no_uuid_item",fallback:"Failed to get entity UUID from item"}
# execute unless score &time_since_goat_horn_use call_your_cat.check matches 0 run return run function call_your_cat:app/feedback/fail {translate:"call_your_cat.fail.call_already_in_progress",fallback:"Your cat didn't hear you, try again"}

execute as @s run function call_your_cat:app/call/get_data with storage call_your_cat:root data