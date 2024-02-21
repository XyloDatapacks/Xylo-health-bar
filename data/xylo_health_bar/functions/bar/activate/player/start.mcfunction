#> xylo_health_bar:bar/activate/player/start
# @context: player which has to be given health bar
# @within: xylo_health_bar:player_tick

tag @s remove xhb.requested_health_bar
execute if score #xlib.time xlib.op < @s xhb.health_bar.end_time run return run function xylo_health_bar:bar/activate/refresh_time

summon minecraft:text_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","xhb.health_bar","xhb.health_bar_new","xhb.health_bar.player"],teleport_duration:2,text:'{"text":""}',billboard:"center",default_background:0b,background:0,CustomName:'{"text":"xylo_health_bar"}',Passengers:[{id:"minecraft:area_effect_cloud",Duration:100000,Tags:["smithed.entity","smithed.strict","xhb.health_bar","xhb.health_bar.player"],CustomName:'{"text":"xylo_health_bar.origin_get"}'}]}
execute as @e[type=minecraft:text_display,distance=..0.01,tag=xhb.health_bar_new,limit=1] run function xylo_health_bar:bar/activate/player/data

function xylo_health_bar:bar/activate/refresh_time
