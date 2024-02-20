execute if score $xylo_health_bar xvc.load_status matches 0 run return 0

# activate health bar for player tagged
execute if entity @s[tag=xhb.requested_health_bar] at @s anchored eyes positioned ^ ^ ^ run function xylo_health_bar:bar/activate/player/start