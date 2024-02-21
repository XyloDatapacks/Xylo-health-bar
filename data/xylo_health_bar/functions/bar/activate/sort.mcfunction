#> xylo_health_bar:bar/activate/sort
# @context: entity hit
# @within: xylo_health_bar:bar/activate/start


execute if score #xlib.time xlib.op < @s xhb.health_bar.end_time run return run function xylo_health_bar:bar/activate/refresh_time
execute if entity @s[type=minecraft:player] run return run tag @s add xhb.requested_health_bar
execute at @s positioned ~ ~10000 ~ run function xylo_health_bar:bar/activate/mob/start
