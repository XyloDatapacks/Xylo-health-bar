#> xylo_health_bar:bar/activate/player/data
# @context: health bar
# @within: xylo_health_bar:bar/activate/player/start

execute on passengers run data modify entity @s[type=minecraft:area_effect_cloud,tag=xhb.health_bar] Owner set from storage xylo_library:op player_data.UUID

scoreboard players operation @s xhb.health_bar.end_time = #xlib.time xlib.op
scoreboard players add @s xhb.health_bar.end_time 100

tag @s remove xhb.health_bar_new
