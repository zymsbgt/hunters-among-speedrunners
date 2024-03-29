execute unless score confirm_kills hnr.settings matches 0 at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[team=!hunters] ~ ~ ~ 50 1
execute unless score confirm_kills hnr.settings matches 0 at @s run playsound minecraft:entity.wither.death master @a[team=hunters] ~ ~ ~ 50 1
execute if score confirm_kills hnr.settings matches 2 run title @a actionbar ["",{"selector":"@s"},{"text":" was A Hunter!","color":"aqua"}]
execute if score confirm_kills hnr.settings matches 2 run tellraw @a ["",{"selector":"@s"},{"text":" was A Hunter!","color":"aqua"}]
execute if score confirm_kills hnr.settings matches 1 run title @a actionbar ["",{"selector":"@s"},{"text":" has fallen!"}]
execute if score confirm_kills hnr.settings matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" has fallen!"}]

##> If there is a killer, as the killed tell the killer they killed a hunter
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed_by=1..}] run tellraw @a[scores={hnr.killed=1..}] ["",{"selector":"@s","color":"aqua"},{"text":" was A Hunter!","color":"aqua"}]
##> If the killer is a runner, as the killer tell the killed who they were killed by
execute if entity @a[scores={hnr.killed=1..},team=runners] as @a[scores={hnr.killed=1..}] run tellraw @a[scores={hnr.killed_by=1..}] ["",{"text":"You were killed by runner ","color":"red"},{"selector":"@a[scores={hnr.killed=1..}]","color":"red"}]
##> If the killer is a hunter, as the killer tell the killed who they were killed by
execute if entity @a[scores={hnr.killed=1..},team=hunters] as @a[scores={hnr.killed=1..}] run tellraw @a[scores={hnr.killed_by=1..}] ["",{"text":"You were killed by hunter ","color":"aqua"},{"selector":"@a[scores={hnr.killed=1..}]","color":"aqua"}]
##> Regardless of killer's role, as the killer playsound to killed wither death sound effect
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run playsound minecraft:entity.wither.death master @a[team=hunter] ~ ~ ~ 50 1

scoreboard players remove Hunters hnr.teams.amount 1
execute if score runners_on_death hnr.settings matches 1 run gamemode spectator
execute if score runners_on_death hnr.settings matches 1 run team leave @s
execute if score runners_on_death hnr.settings matches 3 run trigger hnr.runners.join

# Reset kill counters
scoreboard players reset @a hnr.killed_by
scoreboard players reset @a hnr.killed

scoreboard players set @s hnr.tracking_id 0

##> If no hunters are left, the runners win
execute unless entity @a[team=hunters] run title @a title {"text":"Runners Win!","color":"red"}
execute unless entity @a[team=hunters] run playsound block.bell.use master @a ~ ~ ~ 50 1
execute unless entity @a[team=hunters] run function hunters_and_runners:reset/resetconfirm