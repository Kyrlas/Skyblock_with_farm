# Save integer X, Y, Z coordinates into storage
execute store result storage skyblock:data x int 1 run data get entity @s Pos[0]
execute store result storage skyblock:data y int 1 run data get entity @s Pos[1]
execute store result storage skyblock:data z int 1 run data get entity @s Pos[2]

# Locks the Scritp so it doesn't run again hopefully
scoreboard players set #farm_hub sb_global 1

tellraw @a {"text":"[System] Farming Hub permanently bound to World Spawn!","color":"gray","italic":true}