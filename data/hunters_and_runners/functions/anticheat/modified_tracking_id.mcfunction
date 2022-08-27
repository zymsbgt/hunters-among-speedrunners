##> This function is called from runners/tick

tellraw @a ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},"] ",{"selector":"@s","color":"yellow"}," has been removed from the game for ",{"text":"unauthorized modification of Tracking IDs!","color":"yellow"}]
function hunters_and_runners:reset/player_retire_check

#> Sample message:
# tellraw @a ["",{"text":"[","color":"gray"},{"text":"HAS Anti-cheat","color":"red"},"] ",{"selector":"@s","color":"yellow"}," has been removed from the game for ",{"text":"Insert reason here!","color":"yellow"}]