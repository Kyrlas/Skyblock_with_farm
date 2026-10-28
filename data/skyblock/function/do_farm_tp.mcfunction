# Stores the teleport command's success; macro failure leaves the caller's zero intact.
$execute store success score @s sb_tp_ok in minecraft:overworld run spreadplayers $(x) $(z) 0 1 under 320 false @s
