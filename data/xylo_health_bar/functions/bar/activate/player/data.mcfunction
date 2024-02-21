#> xylo_health_bar:bar/activate/player/data
# @context: health bar
# @within: xylo_health_bar:bar/activate/player/start

execute on passengers run data modify entity @s[type=minecraft:area_effect_cloud,tag=xhb.health_bar] Owner set from storage xylo_library:op player_data.UUID

tag @s remove xhb.health_bar_new
