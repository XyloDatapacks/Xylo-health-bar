#> xylo_health_bar:bar/activate/sort
# @context: entity hit
# @within: xylo_health_bar:bar/activate/start


execute if entity @s[type=minecraft:player] run return run tag @s add xhb.requested_health_bar
function xylo_health_bar:bar/activate/mob/start
