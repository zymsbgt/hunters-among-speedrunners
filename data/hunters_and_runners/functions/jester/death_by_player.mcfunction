execute unless score confirm_kills hnr.settings matches 0 at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 50 1
execute if score confirm_kills hnr.settings matches 2 run title @a actionbar ["",{"selector":"@s"},{"text":" was The Jester!","color":"light_purple"}]
execute if score confirm_kills hnr.settings matches 2 run tellraw @a ["",{"selector":"@s"},{"text":" was The Jester!","color":"light_purple"}]
execute if score confirm_kills hnr.settings matches 1 run title @a actionbar ["",{"selector":"@s"},{"text":" has fallen!"}]
execute if score confirm_kills hnr.settings matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" has fallen!"}]

#> If there is a killer, as the killed tell the killer they killed the jester
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed_by=1..}] run title @a[scores={hnr.killed=1..}] times 20 100 20
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed_by=1..}] run title @a[scores={hnr.killed=1..}] subtitle ["",{"text":"You killed the "},{"text":"Jester","color":"light_purple"},{"text":"!"}]
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed_by=1..}] run title @a[scores={hnr.killed=1..}] title {"text":"Game Over","color":"red"}
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed_by=1..}] run tellraw @a[scores={hnr.killed=1..}] ["",{"text":"You are eliminated from the game","color":"light_purple"}]

#> If the killer is a runner, as the killer tell the killed who they were killed by
execute if entity @a[scores={hnr.killed=1..},team=runners] as @a[scores={hnr.killed=1..}] run tellraw @a[scores={hnr.killed_by=1..}] ["",{"text":"You were killed by runner ","color":"red"},{"selector":"@a[scores={hnr.killed=1..}]","color":"red"}]
##> If the killer is a hunter, as the killer tell the killed who they were killed by
execute if entity @a[scores={hnr.killed=1..},team=hunters] as @a[scores={hnr.killed=1..}] run tellraw @a[scores={hnr.killed_by=1..}] ["",{"text":"You were killed by hunter ","color":"aqua"},{"selector":"@a[scores={hnr.killed=1..}]","color":"aqua"}]

#> Remove killer from game
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run kill @s
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run gamemode spectator
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run team leave @a[scores={hnr.killed=1..}]
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run playsound minecraft:entity.wither.death master @a[scores={hnr.killed=1..}] ~ ~ ~ 50 1
execute if entity @a[scores={hnr.killed=1..},team=hunters] as @a[scores={hnr.killed=1..}] run scoreboard players remove Hunters hnr.teams.amount 1

# Reset kill counters
scoreboard players reset @a hnr.killed_by
scoreboard players reset @a hnr.killed

#> Inform Jester that they won
title @s title {"text":"You Win!","color":"green"}
playsound block.bell.use master @s ~ ~ ~ 50 1

#> Remove the Jester from the game (or change team if specified in settings)
execute if score runners_on_death hnr.settings matches 1 run gamemode spectator
execute if score runners_on_death hnr.settings matches 1 run team leave @s
execute if score runners_on_death hnr.settings matches 2 run trigger hnr.hunters.join