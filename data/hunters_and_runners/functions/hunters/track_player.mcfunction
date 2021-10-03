bossbar set tracked players @a[tag=!tracking]

#> Figure out who to track
scoreboard players operation player_to_track hnr.tracking_id = @s hnr.tracking_id
execute as @a[team=runners,sort=arbitrary] if score @s hnr.tracking_id = player_to_track hnr.tracking_id run tag @s add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:overworld"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:overworld"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_end"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_end"}] add tracking
execute unless entity @a[tag=tracking] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run tag @a[team=runners,limit=1,sort=nearest,nbt={Dimension:"minecraft:the_nether"}] add tracking

#> Debug message for hunter
#tellraw @s [{"text":"Compass is now tracking: ","color":"green"},{"selector":"@a[tag=tracking]"}]

#> Debug message for runner (toggable in settings)
execute if score notify_when_tracked hnr.settings matches 1 run title @a[tag=tracking] actionbar {"text":"You are being tracked"}

#> To enable bossbar, remove hashtag in front of command below
#bossbar set tracked players @a[tag=tracking]

#> Update the compass
execute if entity @a[tag=tracking] run function hunters_and_runners:hunters/compass/update
