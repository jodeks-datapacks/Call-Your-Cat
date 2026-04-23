execute as @s run function jodek:api/data/get/owner with storage call_your_cat:root data

data modify storage call_your_cat:root data.UUID_temp set from storage call_your_cat:root data.UUID
execute store success score &UUID_check call_your_cat.check run data modify storage call_your_cat:root data.UUID_temp set from entity @s Owner

execute unless data entity @s Owner run scoreboard players set &UUID_check call_your_cat.check 1

$execute as @a[nbt={UUID:$(UUID)},limit=1] if score &UUID_check call_your_cat.check matches 1 run \
  return run function call_your_cat:app/feedback/fail {translate:"call_your_cat.fail.no_owner",fallback:"You're not the owner of this cat"}

execute as @s if score &UUID_check call_your_cat.check matches 0 run function call_your_cat:app/call/execute/move/teleport_to_player with storage call_your_cat:root data