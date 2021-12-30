#> Spacing
tellraw @s [" "]
tellraw @s [" "]

tellraw @s [{"text":"===== Gamerules =====","color":"gold"}]
tellraw @s ["These are Minecraft gamerules that affect the game strategy, provided here for your convenience"]

execute if score spectators_generate_chunks hnr.settings matches 1 run tellraw @s [{"text":"Spectators generate chunks: ","hoverEvent":{"action":"show_text","value":{"text":"Allows spectators to create new chunks. Warning: More CPU intensive!"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/gamerules/spectators_generate_chunks"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score spectators_generate_chunks hnr.settings matches 0 run tellraw @s [{"text":"Spectators generate chunks: ","hoverEvent":{"action":"show_text","value":{"text":"Allows spectators to create new chunks. Warning: More CPU intensive!"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/gameroles/spectators_generate_chunks"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]