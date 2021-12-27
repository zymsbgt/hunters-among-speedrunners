#> Function activated every second, hunter specific time events are written here.

execute if entity @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] as @a[team=hunters,nbt=!{Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/give_compass

execute as @a[team=hunters,nbt={Inventory:[{tag:{compass_type:"tracking_device"}}]}] at @s run function hunters_and_runners:hunters/track_player

#> Hunter Spells
execute as @a[scores={hnr.spell.cast=1}] run function hunters_and_runners:hunters/spells/regeneration
execute as @a[scores={hnr.spell.cast=2}] run function hunters_and_runners:hunters/spells/resistance
execute as @a[scores={hnr.spell.cast=3}] run function hunters_and_runners:hunters/spells/strength
execute as @a[scores={hnr.spell.cast=4}] run function hunters_and_runners:hunters/spells/blindness
execute as @a[scores={hnr.spell.cast=5}] run function hunters_and_runners:hunters/spells/hunters_axe
execute as @a[scores={hnr.spell.cast=6}] run function hunters_and_runners:hunters/spells/hunters_bow
execute as @a[scores={hnr.spell.cast=7}] run function hunters_and_runners:hunters/spells/glowing
execute as @a[scores={hnr.spell.cast=8}] run function hunters_and_runners:hunters/spells/paralysis
execute as @a[scores={hnr.spell.cast=9}] run function hunters_and_runners:hunters/spells/show_hunter_names
execute as @a[scores={hnr.spell.cast=10}] run function hunters_and_runners:hunters/spells/mining_fatigue
execute as @a[scores={hnr.spell.cast=11}] run function hunters_and_runners:hunters/spells/nausea
execute as @a[scores={hnr.spell.cast=12}] run function hunters_and_runners:hunters/spells/haste
execute as @a[scores={hnr.spell.cast=13}] run function hunters_and_runners:hunters/spells/night_vision

#> Display text on hunter's actionbar
##> If show_hunter_coords is 1, show coordinates, if not applicable, show nothing
execute if score show_hunter_coords hnr.settings matches 1 run execute as @a[team=hunters] run execute at @s run execute if entity @p[distance=10..,limit=1,team=hunters] run title @s actionbar ["",{"selector":"@p[distance=10..,limit=1,team=hunters]"},{"text":": "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.zpos"},"color":"aqua"}]
##> If show_hunter_coords is 2, show spell cooldown
execute if score show_hunter_coords hnr.settings matches 2..3 run execute as @a[team=hunters] run execute at @s run title @s actionbar "Something might be wrong with your spell cooldown counter"
execute if score show_hunter_coords hnr.settings matches 2..3 run execute as @a[team=hunters] run execute at @s run execute if score @s hnr.spell.cool matches 1.. run title @s actionbar ["",{"text":"You can cast a spell in: "},{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},{"text":" seconds","bold":true}]
execute if score show_hunter_coords hnr.settings matches 2..3 run execute as @a[team=hunters] run execute at @s run execute if score @s hnr.spell.cool matches 0 run title @s actionbar ["",{"text":"You can cast a spell!","bold":true,"color":"green"}]
execute if score show_hunter_coords hnr.settings matches 2..3 run execute as @a[team=hunters] run execute at @s run execute if score @s hnr.spell.cool matches ..-1 run title @s actionbar ["",{"text":"Please stop the game! Error found in spell cooldown: "},{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},{"text":" seconds. Type /stats for more info","bold":true}]
##> If show_hunter_coords is 3, show coordinates, if not applicable, fallback to spell cooldown
execute if score show_hunter_coords hnr.settings matches 3 run execute as @a[team=hunters] run execute at @s run execute if entity @p[distance=10..,limit=1,team=hunters] run title @s actionbar ["",{"selector":"@p[distance=10..,limit=1,team=hunters]"},{"text":": "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@p[distance=2..,limit=1,team=hunters]","objective":"hnr.zpos"},"color":"aqua"}]