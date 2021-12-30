#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.retire 0

tellraw @s ["","Are you sure you want to retire from the game?",{"text":" [Yes, leave game]","color":"yellow","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:reset/player_retire_confirm"},"hoverEvent":{"action":"show_text","contents":["Click to leave game"]}}]