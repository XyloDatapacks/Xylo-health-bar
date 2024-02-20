#> xylo_health_bar:bar/dispose
# @context: health bar text display
# @within: xylo_health_bar:bar/tick

execute on passengers run kill @s[type=minecraft:area_effect_cloud,tag=xhb.health_bar]
kill @s