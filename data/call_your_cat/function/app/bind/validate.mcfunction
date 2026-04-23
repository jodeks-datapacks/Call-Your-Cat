execute as @e[predicate=call_your_cat:callable,limit=1,tag=jodek.bind_target] run function jodek:api/data/get/owner with storage call_your_cat:root data

execute store success score &UUID_check call_your_cat.check run data modify storage call_your_cat:root data.Owner set from entity @s UUID

execute if score &UUID_check call_your_cat.check matches 1 run \
  return run function call_your_cat:app/feedback/fail {translate:"call_your_cat.fail.no_owner",fallback:"You're not the owner of this cat"}

execute if score &UUID_check call_your_cat.check matches 0 run function call_your_cat:app/bind/get_data