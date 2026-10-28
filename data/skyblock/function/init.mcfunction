scoreboard players set @s sb_trigger 0
# Clean up the temporary tag used by older pack versions.
tag @s remove sb_just_ported

# Respawning or using a portal can change dimension without changing travel tags.
# Route using the player's current dimension, never the previous trip's tag.
# at @s also makes direct player calls use the player's current location.
execute at @s if dimension skyblock:void run return run function skyblock:to_farm

# Preserve existing behaviour: From everywhere go to island maybe?
return run function skyblock:to_skyblock
