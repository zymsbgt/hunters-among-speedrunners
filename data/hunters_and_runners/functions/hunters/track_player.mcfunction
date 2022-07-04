#> Figure out who to track
scoreboard players operation player_to_track hnr.tracking_id = @s hnr.tracking_id
execute as @a[team=!hunters,sort=arbitrary] if score @s hnr.tracking_id = player_to_track hnr.tracking_id run tag @s add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:overworld"}] run tag @a[gamemode=survival,team=!hunters,limit=1,sort=nearest,nbt={Dimension:"minecraft:overworld"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_end"}] run tag @a[gamemode=survival,team=!hunters,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_end"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run tag @a[gamemode=survival,team=!hunters,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_nether"}] add tracking

#> Debug message for runner (toggable in settings)
execute if score notify_when_tracked hnr.settings matches 1 run title @a[tag=tracking] actionbar {"text":"You are being tracked"}
execute if score notify_when_tracked hnr.settings matches 2 run execute if score @s hnr.spell.cool matches 0 run title @a[tag=tracking] actionbar ["","Hunter's spell ",{"text":"is ready","color":"green"}]
execute if score notify_when_tracked hnr.settings matches 2 run execute unless score @s hnr.spell.cool matches 0 run title @a[tag=tracking] actionbar ["","Hunter spell is on cooldown for ",{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},"s"]

#> Update the compass
execute if entity @a[tag=tracking] run function hunters_and_runners:hunters/compass/update