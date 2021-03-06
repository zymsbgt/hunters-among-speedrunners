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

#> If the killer is a hunter, as the killer tell the killed who they were killed by
execute if entity @a[scores={hnr.killed=1..},team=hunters] as @a[scores={hnr.killed=1..}] run tellraw @a[scores={hnr.killed_by=1..}] ["",{"text":"You were killed by hunter ","color":"aqua"},{"selector":"@a[scores={hnr.killed=1..}]","color":"aqua"}]
#> If the killer is a hunter reduce the scoreboard count for number of hunters by 1
# duplicate line with line 27
#execute if entity @a[scores={hnr.killed=1..},team=hunters] run scoreboard players remove Hunters hnr.teams.amount 1

#> Remove killer from game
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run kill @s
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run gamemode spectator
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run playsound minecraft:entity.wither.death master @a[scores={hnr.killed=1..}] ~ ~ ~ 50 1
#duplicate line with line 20
execute if entity @a[scores={hnr.killed=1..},team=hunters] as @a[scores={hnr.killed=1..}] run scoreboard players remove Hunters hnr.teams.amount 1

#> Inform Jester that they... uhhh... won?
title @s title {"text":"You have killed a player!","color":"green"}
playsound block.bell.use master @s ~ ~ ~ 50 1

#> Remove the Jester from the game (or change team if specified in settings. Note: jesters_on_death is now depreciated)
team leave @s

#> Take the role of the killer
#> If the killer is a runner, as the killed join the runners team
#execute if entity @a[scores={hnr.killed=1..},team=runners] as @s run function hunters_and_runners:runners/join_team
#execute if entity @a[scores={hnr.killed=1..},team=runners] as @s run title @s subtitle {"text":"You are now a runner","color":"aqua"}
#> If the killer is a hunter, as the killed join the hunters team
#execute if entity @a[scores={hnr.killed=1..},team=hunters] as @s run function hunters_and_runners:hunters/join_team
#execute if entity @a[scores={hnr.killed=1..},team=hunters] as @s run title @s subtitle {"text":"You are now a hunter","color":"red"}

#> If jesters_on_death == 1, Let Jester decide their role (jesters_on_death is now depreciated)
#execute if score jesters_on_death hnr.settings matches 1 run tellraw @s ["",{"text":"You won as a ","bold":true,"color":"green"},{"text":"Jester","bold":true,"color":"light_purple"},{"text":"!","bold":true,"color":"green"}]
#execute if score jesters_on_death hnr.settings matches 1 run tellraw @s "Now, choose which team you wanna join"
#execute if score jesters_on_death hnr.settings matches 1 run tellraw @s {"text":"*==================*","color":"gold"}
#execute if score jesters_on_death hnr.settings matches 1 run tellraw @s ["",{"text":"| ","color":"gold"},{"text":"[Runners]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.runners.join"}},"  ",{"text":"[Hunters]","color":"red","clickEvent":{"action":"run_command","value":"/trigger hnr.hunters.join"}},{"text":" |","color":"gold"}]
#execute if score jesters_on_death hnr.settings matches 1 run tellraw @s {"text":"*==================*","color":"gold"}

#> Remove all teams from killer
execute if entity @a[scores={hnr.killed=1..}] as @a[scores={hnr.killed=1..}] run team leave @a[scores={hnr.killed=1..}]

#> Reset kill counters
scoreboard players reset @a hnr.killed_by
scoreboard players reset @a hnr.killed

execute if entity @a[team=runners] run function hunters_and_runners:runners/id/apply
execute if entity @a[team=jester] run function hunters_and_runners:runners/id/apply

#> Note: This part of the datapack is buggy and I couldn't fix this while in development. Could someone please help?

##> If no runners are left, the hunters win
execute unless entity @a[team=runners] run title @a title {"text":"Hunters Win!","color":"aqua"}
execute unless entity @a[team=runners] run playsound block.bell.use master @a ~ ~ ~ 50 1

##> If no hunters are left, the runners win
execute unless entity @a[team=hunters] run title @a title {"text":"Runners Win!","color":"red"}
execute unless entity @a[team=hunters] run playsound block.bell.use master @a ~ ~ ~ 50 1

#> If Jester is the last player standing (or all players are dead), the game ends in a draw. This should only happen in testing, never in actual gameplay.
#execute unless entity @a[team=hunters] run execute unless entity @a[team=runners] run title @a title {"text":"Draw!","color":"gray"}
execute unless entity @a[team=hunters] run execute unless entity @a[team=runners] run tellraw @a {"text":"Error in hunters_and_runners:jester/death_by_player, could not accurately determine which team won the game on line 72","italic":true,"color":"gray"}

##> Reset the game
execute unless entity @a[team=runners] run function hunters_and_runners:reset/resetconfirm
execute unless entity @a[team=hunters] run function hunters_and_runners:reset/resetconfirm