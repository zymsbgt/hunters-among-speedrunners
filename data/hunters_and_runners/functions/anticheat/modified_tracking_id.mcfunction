##> This function is called from runners/tick

execute if entity @s[gamemode=!spectator] run tellraw @a ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},{"text":"] ","color":"gray"},{"selector":"@s","color":"yellow"}," has been removed from the game for ",{"text":"unauthorized modification of Tracking IDs!","color":"yellow"}]
scoreboard players set @s hnr.tracking_id 0
execute if entity @a[team=runners] run function hunters_and_runners:runners/id/apply
execute if entity @a[team=jester] run function hunters_and_runners:runners/id/apply
function hunters_and_runners:reset/player_retire_check

#> Sample message:
# tellraw @a ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},"] ",{"selector":"@s","color":"yellow"}," has been removed from the game for ",{"text":"Insert reason here!","color":"yellow"}]