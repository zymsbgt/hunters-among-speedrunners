scoreboard players add @a[gamemode=survival,team=!hunters,tag=!checked] hnr.tracking_id 1
tag @a[gamemode=survival,team=!hunters,tag=!checked,limit=1,sort=arbitrary] add checked

execute if entity @a[gamemode=survival,team=!hunters,tag=!checked] run function hunters_and_runners:runners/id/apply