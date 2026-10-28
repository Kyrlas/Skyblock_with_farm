# 1. Briefly force-load the center chunk, because i kept falliing into the void lol
execute in skyblock:void run forceload add 0 0

# 2. Place the island before player see above why
execute in skyblock:void unless score @s sb_visited matches 1 run place template skyblock:island 0 64 0 none
scoreboard players set @s sb_visited 1

# 3. Teleport the player to the island
execute in skyblock:void run tp @s 3.4 67.0 1.4 0 0

# 4. Remove the force-load 
execute in skyblock:void run forceload remove 0 0

# 5. Apply tags and feedback
tag @s add sb_in_skyblock
tellraw @s {"text":"Traveling to Skyblock Island...","color":"green"}
playsound minecraft:block.note_block.bell master @s ~ ~ ~