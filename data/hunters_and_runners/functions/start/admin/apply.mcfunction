scoreboard players add @a[gamemode=survival,tag=!teamAssigned] uid 1
tag @a[gamemode=survival,tag=!teamAssigned,limit=1,sort=arbitrary] add teamAssigned

execute if entity @a[gamemode=survival,tag=!teamAssigned] run function hunters_and_runners:runners/id/apply