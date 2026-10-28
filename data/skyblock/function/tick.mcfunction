# Enable the trigger for everyone
scoreboard players enable @a sb_trigger

# Listen for the teleport command
execute as @a[scores={sb_trigger=1..}] at @s run function skyblock:init

# Auto-capture world spawn, should only run once
execute unless score #farm_hub sb_global matches 1 as @a[limit=1] if dimension minecraft:overworld at @s run function skyblock:auto_set_farm