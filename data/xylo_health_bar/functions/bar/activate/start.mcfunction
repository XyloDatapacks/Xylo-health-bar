#> xylo_health_bar:bar/activate/start
# @context: player hitting an entity
# @within: #xylo_library:player_hurts_entity

#==<function tag function>==#
execute if score $xylo_health_bar xvc.load_status matches 0 run return 0
#---------------------------#

execute as @e[type=!#xylo_library:non_mob,predicate=xylo_library:internal/hit_detection/is_victim] unless score #xlib.time xlib.op < @s xhb.health_bar.end_time run function xylo_health_bar:bar/activate/sort

