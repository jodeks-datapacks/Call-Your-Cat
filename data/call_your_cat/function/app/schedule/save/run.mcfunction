schedule function call_your_cat:app/schedule/save/run 1s

execute as @e[predicate=call_your_cat:callable,tag=jodek.can_be_called] run function call_your_cat:app/schedule/save/save_uuid with storage call_your_cat:root data