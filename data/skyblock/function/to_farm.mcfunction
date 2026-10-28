# Reset before every attempt, including missing or invalid macro arguments.
scoreboard players set @s sb_tp_ok 0
execute unless data storage skyblock:data x run return run function skyblock:farm_tp_failed
execute unless data storage skyblock:data z run return run function skyblock:farm_tp_failed

# Preserve the existing saved-hub surface landing method.
function skyblock:do_farm_tp with storage skyblock:data
execute unless score @s sb_tp_ok matches 1 run return run function skyblock:farm_tp_failed

# Commit state and feedback only if the teleport succeeds.
tag @s remove sb_in_skyblock
tag @s remove sb_just_ported
tellraw @s {"text":"Arrived in Farming World.","color":"gold"}
execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~
return 1
