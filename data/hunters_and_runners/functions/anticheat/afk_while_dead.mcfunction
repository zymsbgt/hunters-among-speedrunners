##> This function is called from runners/tick

tellraw @s ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"}," has been retired from the game for going AFK while dead"]
scoreboard players set @s hnr.deadafk 0
function hunters_and_runners:reset/player_retire_check

#> Sample message:
# tellraw @a ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},"] ",{"selector":"@s","color":"yellow"}," has been removed from the game for ",{"text":"Insert reason here!","color":"yellow"}]