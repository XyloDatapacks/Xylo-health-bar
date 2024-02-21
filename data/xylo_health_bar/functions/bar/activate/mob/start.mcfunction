#> xylo_health_bar:bar/activate/mob/start
# @context: entity which has to be given health bar
# @within: xylo_health_bar:bar/activate/sort

summon minecraft:text_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","xhb.health_bar","xhb.health_bar_new","xhb.health_bar.mob"],text:'{"text":""}',billboard:"center",default_background:0b,background:0,CustomName:'{"text":"xylo_health_bar"}',transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.16f,0.0f]}}
ride @e[type=minecraft:text_display,distance=..0.01,tag=xhb.health_bar_new,limit=1] mount @s
execute on passengers if entity @s[tag=xhb.health_bar_new] run function xylo_health_bar:bar/activate/mob/data

function xylo_health_bar:bar/activate/refresh_time
