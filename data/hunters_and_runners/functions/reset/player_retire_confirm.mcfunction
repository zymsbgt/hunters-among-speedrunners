#> Reset variables to default values
scoreboard players set @s hnr.ishealer 0

#> Clear teams
# If player is hunter, reduce hunter count by 1
execute if entity @s[team=hunters] run scoreboard players remove Hunters hnr.teams.amount 1
team leave @s
execute at @s run spawnpoint @s ~ ~ ~
kill @s

#> Set player to spectator mode
gamemode spectator @s

#> Acknoledgement note that player has left the game
#title @s title {"text":"Game Over","color":"yellow"}
#title @s subtitle {"text":"Game Over","color":"yellow"}
tellraw @s {"text":"You have retired from the game","color":"yellow"}
execute at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 50 1.6

#> Announce to all players that player has left game (to-do)
tellraw @a ["",{"selector":"@s"},{"text":" has retired from the game!"}]