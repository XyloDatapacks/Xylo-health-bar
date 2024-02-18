# load
scoreboard players set $xylo_health_bar xvc.load_status 1
data modify storage xvc_version:op packs append value {namespace:"xylo_health_bar",version:10000,name:"Xylo's Health Bar"}
execute store result storage xvc_version:op packs[-1].index int 1 run scoreboard players add #pack_count xvc.load_status 1

# required packs
data modify storage xvc_version:op packs[-1].required append value {namespace:"xylo_library",version:10000}


