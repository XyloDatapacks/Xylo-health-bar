#> xylo_health_bar:bar/activate/refresh_time
# @context: health bar text display
# @within: xylo_health_bar:bar/tick

scoreboard players operation @s xhb.health_bar.end_time = #xlib.time xlib.op
scoreboard players add @s xhb.health_bar.end_time 100