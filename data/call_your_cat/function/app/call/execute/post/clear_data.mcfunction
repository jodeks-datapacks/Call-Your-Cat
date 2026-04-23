# data remove storage call_your_cat:root data.UUID
data remove storage call_your_cat:root data.latest_position_x
data remove storage call_your_cat:root data.latest_position_y
data remove storage call_your_cat:root data.UUID_from_item
data remove storage call_your_cat:root data.latest_position_x_forceload
data remove storage call_your_cat:root data.latest_position_y_forceload
# data remove storage call_your_cat:root data.Owner
# data remove storage call_your_cat:root data.UUID_temp

data remove storage call_your_cat:root data.selected_item_slot
data remove storage call_your_cat:root data.custom_name
data remove storage call_your_cat:root data.player_name
data remove storage call_your_cat:root data.instrument
data remove storage call_your_cat:root data.audioplayer

scoreboard players set &teleported call_your_cat.check 0
scoreboard players set &mounted call_your_cat.check 0
scoreboard players set &time_since_goat_horn_use call_your_cat.check 0