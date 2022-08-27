#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.retirecnfm 0

#> Check if the player is eligible for retirement
execute if entity @s[team=] run tellraw @s {"text":"You have already retired from the game!","color":"gray"}
execute if entity @s[team=!] run function hunters_and_runners:reset/player_retire_confirm