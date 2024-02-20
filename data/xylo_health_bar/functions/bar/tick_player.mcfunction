#> xylo_health_bar:bar/tick_player
# @context: health bar text display
# @within: xylo_health_bar:tick

# dispose if time passed
execute if score #xlib.time xlib.op >= @s xhb.health_bar.end_time run return run function xylo_health_bar:bar/dispose
# dispose if player died or logged off
execute store result score #xhb.bar.tick_player.player_found xhb.op on passengers on origin if entity @s
execute if score #xhb.bar.tick_player.player_found xhb.op matches 0 run return run function xylo_health_bar:bar/dispose

# tp
tag @s add xhb.tick_player
execute on passengers on origin at @s anchored eyes positioned ^ ^ ^ run tp @e[type=minecraft:text_display,tag=xhb.tick_player,limit=1] ~ ~0.3 ~
tag @s remove xhb.tick_player

# update health
execute store result score @s xhb.health_bar.health on passengers on origin run scoreboard players get @s xlib.player.health_nbt
scoreboard players operation @s xhb.health_bar.health /= #100 xconst
execute store result score @s xhb.health_bar.max_health on passengers on origin run scoreboard players get @s xlib.player.max_health
scoreboard players operation @s xhb.health_bar.max_health /= #100 xconst
execute on passengers on origin run scoreboard players operation #xrpgc.level xrpgc.op = @s xrpgc.level

# update display
execute unless score $xylo_rpg_core xvc.load_status matches 1 run data modify entity @s text set value '[{"score":{"objective":"xhb.health_bar.health","name":"@s"}}," / ",{"score":{"objective":"xhb.health_bar.max_health","name":"@s"}}]'
execute if score $xylo_rpg_core xvc.load_status matches 1 run data modify entity @s text set value '["lvl",{"score":{"objective":"xrpgc.op","name":"#xrpgc.level"}}," | ",{"score":{"objective":"xhb.health_bar.health","name":"@s"}}," / ",{"score":{"objective":"xhb.health_bar.max_health","name":"@s"}}]'

