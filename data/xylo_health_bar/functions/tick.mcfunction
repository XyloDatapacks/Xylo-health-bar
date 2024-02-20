execute if score $xylo_health_bar xvc.load_status matches 0 run return 0

# health bar tick
execute as @e[type=minecraft:text_display,tag=xhb.health_bar.mob] run function xylo_health_bar:bar/tick_mob
execute as @e[type=minecraft:text_display,tag=xhb.health_bar.player] run function xylo_health_bar:bar/tick_player