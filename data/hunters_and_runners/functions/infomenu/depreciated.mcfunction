#> Spacing
tellraw @s [" "]
tellraw @s [" "]

#> List our settings
tellraw @s [{"text":"== Depreciated Settings ==","color":"gold"}]
tellraw @s ["These settings have been hidden here as they are known to give an unfair advantage to either team."]
tellraw @s ["Enable them at your own risk!"]

execute if score show_death_messages hnr.settings matches 1 run tellraw @s [{"text":"Show death messages in chat: ","hoverEvent":{"action":"show_text","value":{"text":"Displays cause of death in chat when a player dies. Set to false if only hunters can respawn!"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_death_messages"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_death_messages hnr.settings matches 0 run tellraw @s [{"text":"Show death messages in chat: ","hoverEvent":{"action":"show_text","value":{"text":"Displays cause of death in chat when a player dies. Set to false if only hunters can respawn!"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_death_messages"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score enable_team_colors hnr.settings matches 1 run tellraw @s [{"text":"Enable team colors: ","hoverEvent":{"action":"show_text","value":{"text":"Player names will be color coded; Recommended when everyone has the same name using a nickname plugin"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_team_colors"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score enable_team_colors hnr.settings matches 0 run tellraw @s [{"text":"Enable team colors: ","hoverEvent":{"action":"show_text","value":{"text":"Player names will be color coded; Recommended when everyone has the same name using a nickname plugin"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_team_colors"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score spell_cooldown_debug hnr.settings matches 1 run tellraw @s [{"text":"Enable spell cooldown debugging mode: ","hoverEvent":{"action":"show_text","value":{"text":"Hunter's spell cooldown will be displayed on right side of screen. Caution: This will reveal who the hunters are!"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/spell_cooldown_debug"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score spell_cooldown_debug hnr.settings matches 0 run tellraw @s [{"text":"Enable spell cooldown debugging mode: ","hoverEvent":{"action":"show_text","value":{"text":"Hunter's spell cooldown will be displayed on right side of screen. Caution: This will reveal who the hunters are!"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/spell_cooldown_debug"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score enable_jester hnr.settings matches 1 run tellraw @s [{"text":"Enable Jester: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Jester into the game"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_jester"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score enable_jester hnr.settings matches 0 run tellraw @s [{"text":"Enable Jester: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Jester into the game"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_jester"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]


tellraw @s [{"text":"Back to Main Menu: ","hoverEvent":{"action":"show_text","value":{"text":"View the main settings"}}},{"text":"[Click Here]","color":"gray","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:information"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]