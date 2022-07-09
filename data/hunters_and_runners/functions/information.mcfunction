#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.information 0

tellraw @s ["",{"text":"= Hunter Among Speedrunners =","bold":true,"color":"gold"}]
tellraw @s ["Your role will be automagically revealed when the game starts!"]
tellraw @s ["Shhh! Make sure to keep it a secret!"]
tellraw @s ["Please ensure that you are not in spectator mode if you want to play!"]
tellraw @s [" "]
tellraw @s [{"text":"[Start]","color":"green", "clickEvent":{"action":"run_command","value":"/function hunters_and_runners:start"},"hoverEvent":{"action":"show_text","value":{"text":"Start Game!","color":"green" }}},{"text":"[Reset]","color":"red", "clickEvent":{"action":"run_command","value":"/function hunters_and_runners:reset/reset"},"hoverEvent":{"action":"show_text","value":{"text":"Reset the game (Experimental)","color":"red" }}}]
tellraw @s [" "]

#> List our settings
tellraw @s [{"text":"===== Settings =====","color":"gold"}]

execute if score number_of_hunters hnr.settings matches 3 run tellraw @s [{"text":"Number of Hunters: ","hoverEvent":{"action":"show_text","value":{"text":"How many hunters should this game have?"}}},{"text":"[3]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/number_of_hunters"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score number_of_hunters hnr.settings matches 2 run tellraw @s [{"text":"Number of Hunters: ","hoverEvent":{"action":"show_text","value":{"text":"How many hunters should this game have?"}}},{"text":"[2]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/number_of_hunters"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score number_of_hunters hnr.settings matches 1 run tellraw @s [{"text":"Number of Hunters: ","hoverEvent":{"action":"show_text","value":{"text":"How many hunters should this game have?"}}},{"text":"[1]","color":"green","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/number_of_hunters"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score number_of_hunters hnr.settings matches 0 run tellraw @s [{"text":"Number of Hunters: ","hoverEvent":{"action":"show_text","value":{"text":"How many hunters should this game have?"}}},{"text":"[0]","color":"gray","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/number_of_hunters"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score show_previous_pos hnr.settings matches 1 run tellraw @s [{"text":"Show Runners last known position: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_previous_pos hnr.settings matches 0 run tellraw @s [{"text":"Show Runners last known position: ","hoverEvent":{"action":"show_text","value":{"text":"Show where the runner last was before they changed dimensions"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_previous_position"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score rename_compass_to_runner hnr.settings matches 1 run tellraw @s [{"text":"Rename compass to match Runner: ","hoverEvent":{"action":"show_text","value":{"text":"Rename compass to match the Runner currently being tracked"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/rename_compass_to_runner"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score rename_compass_to_runner hnr.settings matches 0 run tellraw @s [{"text":"Rename compass to match Runner: ","hoverEvent":{"action":"show_text","value":{"text":"Rename compass to match the Runner currently being tracked"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/rename_compass_to_runner"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score give_players_invisibility hnr.settings matches 3 run tellraw @s [{"text":"Starting invisibility: ","hoverEvent":{"action":"show_text","value":{"text":"Give all players invisibility at the beginning"}}},{"text":"[30s]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_players_invisibility"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score give_players_invisibility hnr.settings matches 2 run tellraw @s [{"text":"Starting invisibility: ","hoverEvent":{"action":"show_text","value":{"text":"Give all players invisibility at the beginning"}}},{"text":"[20s]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_players_invisibility"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score give_players_invisibility hnr.settings matches 1 run tellraw @s [{"text":"Starting invisibility: ","hoverEvent":{"action":"show_text","value":{"text":"Give all players invisibility at the beginning"}}},{"text":"[10s]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_players_invisibility"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score give_players_invisibility hnr.settings matches 0 run tellraw @s [{"text":"Starting invisibility: ","hoverEvent":{"action":"show_text","value":{"text":"Give all players invisibility at the beginning"}}},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_players_invisibility"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score worldborder_distance hnr.settings matches 3 run tellraw @s [{"text":"Worldborder Distance: ","hoverEvent":{"action":"show_text","value":{"text":"Distance to Worldborder, starting from center"}}},{"text":"[9000]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/worldborder_distance"},"hoverEvent":{"action":"show_text","value":{"text":"Up to 19 strongholds may generate"}}}]
execute if score worldborder_distance hnr.settings matches 2 run tellraw @s [{"text":"Worldborder Distance: ","hoverEvent":{"action":"show_text","value":{"text":"Distance to Worldborder, starting from center"}}},{"text":"[6000]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/worldborder_distance"},"hoverEvent":{"action":"show_text","value":{"text":"Up to 9 strongholds may generate"}}}]
execute if score worldborder_distance hnr.settings matches 1 run tellraw @s [{"text":"Worldborder Distance: ","hoverEvent":{"action":"show_text","value":{"text":"Distance to Worldborder, starting from center"}}},{"text":"[3000]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/worldborder_distance"},"hoverEvent":{"action":"show_text","value":{"text":"Up to 3 strongholds may generate"}}}]
execute if score worldborder_distance hnr.settings matches 0 run tellraw @s [{"text":"Worldborder Distance: ","hoverEvent":{"action":"show_text","value":{"text":"Distance to Worldborder, starting from center"}}},{"text":"[25000]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/worldborder_distance"},"hoverEvent":{"action":"show_text","value":{"text":"Up to 128 strongholds may generate"}}}]

execute if score environment_kill hnr.settings matches 2 run tellraw @s [{"text":"Respawn if environment kill: ","hoverEvent":{"action":"show_text","value":{"text":"Allow X to respawn if they were not killed by a player"}}},{"text":"[Hunters only]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/environment_kill"},"hoverEvent":{"action":"show_text","value":{"text":"Ensure that Announce Kills is off!","color":"gold"}}}]
execute if score environment_kill hnr.settings matches 1 run tellraw @s [{"text":"Respawn if environment kill: ","hoverEvent":{"action":"show_text","value":{"text":"Allow X to respawn if they were not killed by a player"}}},{"text":"[All players]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/environment_kill"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score environment_kill hnr.settings matches 0 run tellraw @s [{"text":"Respawn if environment kill: ","hoverEvent":{"action":"show_text","value":{"text":"Allow X to respawn if they were not killed by a player"}}},{"text":"[No players]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/environment_kill"},"hoverEvent":{"action":"show_text","value":{"text":"Not compatible with Gametype: Tag mode!","color":"gold"}}}]

execute if score enable_healer hnr.settings matches 1 run tellraw @s [{"text":"Enable Healer: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Healer into the game"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_healer"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score enable_healer hnr.settings matches 0 run tellraw @s [{"text":"Enable Healer: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Healer into the game"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_healer"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score hunter_sabotage hnr.settings matches 4 run tellraw @s [{"text":"Hunter Spell Cooldown: ","hoverEvent":{"action":"show_text","value":{"text":"How long do hunters have to wait before casting another spell"}}},{"text":"[45m]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunter_sabotage"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score hunter_sabotage hnr.settings matches 3 run tellraw @s [{"text":"Hunter Spell Cooldown: ","hoverEvent":{"action":"show_text","value":{"text":"How long do hunters have to wait before casting another spell"}}},{"text":"[30m]","color":"gray","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunter_sabotage"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score hunter_sabotage hnr.settings matches 2 run tellraw @s [{"text":"Hunter Spell Cooldown: ","hoverEvent":{"action":"show_text","value":{"text":"How long do hunters have to wait before casting another spell"}}},{"text":"[15m]","color":"green","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunter_sabotage"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score hunter_sabotage hnr.settings matches 1 run tellraw @s [{"text":"Hunter Spell Cooldown: ","hoverEvent":{"action":"show_text","value":{"text":"How long do hunters have to wait before casting another spell"}}},{"text":"[10m]","color":"black","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunter_sabotage"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score hunter_sabotage hnr.settings matches 0 run tellraw @s [{"text":"Hunter Spell Cooldown: ","hoverEvent":{"action":"show_text","value":{"text":"How long do hunters have to wait before casting another spell"}}},{"text":"[5m]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/hunter_sabotage"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score show_hunter_coords hnr.settings matches 3 run tellraw @s [{"text":"Hunters actionbar: ","hoverEvent":{"action":"show_text","value":{"text":"What should be displayed on hunters actionbar?"}}},{"text":"[Spell cooldown/coordinates]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_hunter_coords"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_hunter_coords hnr.settings matches 2 run tellraw @s [{"text":"Hunters actionbar: ","hoverEvent":{"action":"show_text","value":{"text":"What should be displayed on hunters actionbar?"}}},{"text":"[Spell cooldown]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_hunter_coords"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_hunter_coords hnr.settings matches 1 run tellraw @s [{"text":"Hunters actionbar: ","hoverEvent":{"action":"show_text","value":{"text":"What should be displayed on hunters actionbar?"}}},{"text":"[Nearest hunter coordinates]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_hunter_coords"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score show_hunter_coords hnr.settings matches 0 run tellraw @s [{"text":"Hunters actionbar: ","hoverEvent":{"action":"show_text","value":{"text":"What should be displayed on hunters actionbar?"}}},{"text":"[Nothing]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/show_hunter_coords"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score notify_when_tracked hnr.settings matches 2 run tellraw @s [{"text":"Notify runners when tracked: ","hoverEvent":{"action":"show_text","value":{"text":"Inform runners when they are being tracked by a hunter on their actionbar"}}},{"text":"[Show spell cooldown]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/notify_when_tracked"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score notify_when_tracked hnr.settings matches 1 run tellraw @s [{"text":"Notify runners when tracked: ","hoverEvent":{"action":"show_text","value":{"text":"Inform runners when they are being tracked by a hunter on their actionbar"}}},{"text":"[On]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/notify_when_tracked"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score notify_when_tracked hnr.settings matches 0 run tellraw @s [{"text":"Notify runners when tracked: ","hoverEvent":{"action":"show_text","value":{"text":"Inform runners when they are being tracked by a hunter on their actionbar"}}},{"text":"[Off]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/notify_when_tracked"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

tellraw @s ["",{"text":"===== Experimental Options =====","bold":"false","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Change any of these settings at your own risk!"}}}]

execute if score runners_on_death hnr.settings matches 3 run tellraw @s [{"text":"Hunters & Runners Gametype: ","hoverEvent":{"action":"show_text","value":{"text":"Sets the gametype for Hunters and Runners. This will affect what happens to players upon death"}}},{"text":"[Tag]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_on_death"},"hoverEvent":{"action":"show_text","value":{"text":"Hunters will become Runners upon death and vice versa"}}}]
execute if score runners_on_death hnr.settings matches 2 run tellraw @s [{"text":"Hunters & Runners Gametype: ","hoverEvent":{"action":"show_text","value":{"text":"Sets the gametype for Hunters and Runners. This will affect what happens to players upon death"}}},{"text":"[Infected]","color":"green","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_on_death"},"hoverEvent":{"action":"show_text","value":{"text":"Runners will become infected by Hunters and join them"}}}]
execute if score runners_on_death hnr.settings matches 1 run tellraw @s [{"text":"Hunters & Runners Gametype: ","hoverEvent":{"action":"show_text","value":{"text":"Sets the gametype for Hunters and Runners. This will affect what happens to players upon death"}}},{"text":"[Classic]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_on_death"},"hoverEvent":{"action":"show_text","value":{"text":"Players will become Spectators once killed"}}}]
execute if score runners_on_death hnr.settings matches 0 run tellraw @s [{"text":"Hunters & Runners Gametype: ","hoverEvent":{"action":"show_text","value":{"text":"Sets the gametype for Hunters and Runners. This will affect what happens to players upon death"}}},{"text":"[Endless]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/runners_on_death"},"hoverEvent":{"action":"show_text","value":{"text":"Players respawn in their respective teams"}}}]

#> This function is a work in progress at the moment, please leave this at the default setting
#execute if score admin_chooses_teams hnr.settings matches 2 run tellraw @s [{"text":"Assign Teams: ","hoverEvent":{"action":"show_text","value":{"text":"Who shall decide the everyone's teams?"}}},{"text":"[Admin, show names]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/admin_chooses_teams"},"hoverEvent":{"action":"show_text","value":{"text":"The server admin will choose teams (wip)"}}}]
#execute if score admin_chooses_teams hnr.settings matches 1 run tellraw @s [{"text":"Assign Teams: ","hoverEvent":{"action":"show_text","value":{"text":"Who shall decide the everyone's teams?"}}},{"text":"[Admin, hide names]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/admin_chooses_teams"},"hoverEvent":{"action":"show_text","value":{"text":"The server admin will choose teams (wip)"}}}]
#execute if score admin_chooses_teams hnr.settings matches 0 run tellraw @s [{"text":"Assign Teams: ","hoverEvent":{"action":"show_text","value":{"text":"Who shall decide the everyone's teams?"}}},{"text":"[The algorithm]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/admin_chooses_teams"},"hoverEvent":{"action":"show_text","value":{"text":"Minecraft will select teams at random"}}}]

execute if score display_health hnr.settings matches 3 run tellraw @s [{"text":"Show Healthbar to Others: ","hoverEvent":{"action":"show_text","value":{"text":"Where to display Healthbar to other players?"}}},{"text":"[Tab & Player]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/display_health"},"hoverEvent":{"action":"show_text","value":{"text":"Everyone can see everyone's health"}}}]
execute if score display_health hnr.settings matches 2 run tellraw @s [{"text":"Show Healthbar to Others: ","hoverEvent":{"action":"show_text","value":{"text":"Where to display Healthbar to other players?"}}},{"text":"[On Tab Menu]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/display_health"},"hoverEvent":{"action":"show_text","value":{"text":"Everyone can see everyone's health"}}}]
execute if score display_health hnr.settings matches 1 run tellraw @s [{"text":"Show Healthbar to Others: ","hoverEvent":{"action":"show_text","value":{"text":"Where to display Healthbar to other players?"}}},{"text":"[Above Player]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/display_health"},"hoverEvent":{"action":"show_text","value":{"text":"Nearby hunters can see their health"}}}]
execute if score display_health hnr.settings matches 0 run tellraw @s [{"text":"Show Healthbar to Others: ","hoverEvent":{"action":"show_text","value":{"text":"Where to display Healthbar to other players?"}}},{"text":"[Do Not Show]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/display_health"},"hoverEvent":{"action":"show_text","value":{"text":"Everyone can only see their health"}}}]

execute if score confirm_kills hnr.settings matches 2 run tellraw @s [{"text":"Announce Kills: ","hoverEvent":{"action":"show_text","value":{"text":"When a player dies, announce their death and team to everyone. Set to [Do not announce] if Respawn if Environment Kill is set to Hunters only!"}}},{"text":"[Death and Team]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/confirm_kills"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score confirm_kills hnr.settings matches 1 run tellraw @s [{"text":"Announce Kills: ","hoverEvent":{"action":"show_text","value":{"text":"When a player dies, announce their death and team to everyone. Set to [Do not announce] if Respawn if Environment Kill is set to Hunters only!"}}},{"text":"[Death only]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/confirm_kills"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score confirm_kills hnr.settings matches 0 run tellraw @s [{"text":"Announce Kills: ","hoverEvent":{"action":"show_text","value":{"text":"When a player dies, announce their death and team to everyone. "}}},{"text":"[Do not announce]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/confirm_kills"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score respect_runner_limit hnr.settings matches 1 run tellraw @s [{"text":"Enforce 9 runner limit: ","hoverEvent":{"action":"show_text","value":{"text":"Allows max. 9 runners in a game. Turn this off if players are not being assigned teams"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/respect_runner_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score respect_runner_limit hnr.settings matches 0 run tellraw @s [{"text":"Enforce 9 runner limit: ","hoverEvent":{"action":"show_text","value":{"text":"Allows max. 9 runners in a game. Turn this off if players are not being assigned teams"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/respect_runner_limit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

#> Work in progress
#execute if score set_runners_goal hnr.settings matches 3 run tellraw @s [{"text":"Runner's goal: ","hoverEvent":{"action":"show_text","value":{"text":"Set the Runner's victory objective (aside from killing all the hunters)"}}},{"text":"[Summon and Kill a Warden]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/set_runners_goal"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score set_runners_goal hnr.settings matches 2 run tellraw @s [{"text":"Runner's goal: ","hoverEvent":{"action":"show_text","value":{"text":"Set the Runner's victory objective (aside from killing all the hunters)"}}},{"text":"[Defend a Village from a Raid]","color":"green","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/set_runners_goal"},"hoverEvent":{"action":"show_text","value":{"text":"Notice: The easier the game difficulty, the easier it is for runners to win!"}}}]
execute if score set_runners_goal hnr.settings matches 1 run tellraw @s [{"text":"Runner's goal: ","hoverEvent":{"action":"show_text","value":{"text":"Set the Runner's victory objective (aside from killing all the hunters)"}}},{"text":"[Spawn and Kill a Wither]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/set_runners_goal"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score set_runners_goal hnr.settings matches 0 run tellraw @s [{"text":"Runner's goal: ","hoverEvent":{"action":"show_text","value":{"text":"Set the Runner's victory objective (aside from killing all the hunters)"}}},{"text":"[Kill the Ender Dragon]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/set_runners_goal"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

execute if score enable_jester hnr.settings matches 1 run tellraw @s [{"text":"Enable Jester: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Jester into the game"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_jester"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score enable_jester hnr.settings matches 0 run tellraw @s [{"text":"Enable Jester: ","hoverEvent":{"action":"show_text","value":{"text":"Adds 1 Jester into the game"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/enable_jester"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

#> Work in progress
execute if score give_starter_kit hnr.settings matches 2 run tellraw @s [{"text":"Give starter kit: ","hoverEvent":{"action":"show_text","value":{"text":"Gives all players a stone axe, sword and pickaxe, 8 sticks and 4 torches and bread at the start and after death. Basically a 'short game' mode"}}},{"text":"[Only after the Nether is discovered]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_starter_kit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score give_starter_kit hnr.settings matches 1 run tellraw @s [{"text":"Give starter kit: ","hoverEvent":{"action":"show_text","value":{"text":"Gives all players a stone axe, sword and pickaxe, 8 sticks and 4 torches and bread at the start and after death. Basically a 'short game' mode"}}},{"text":"[true]","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_starter_kit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]
execute if score give_starter_kit hnr.settings matches 0 run tellraw @s [{"text":"Give starter kit: ","hoverEvent":{"action":"show_text","value":{"text":"Gives all players a stone axe, sword and pickaxe, 8 sticks and 4 torches and bread at the start and after death. Basically a 'short game' mode"}}},{"text":"[false]","color":"red","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:settings/give_starter_kit"},"hoverEvent":{"action":"show_text","value":{"text":"Toggle setting"}}}]

tellraw @s ["","Minecraft gamerule settings: ",{"text":"[Click Here]","color":"gray","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:infomenu/gamerules"}}]

tellraw @s [{"text":"Looking for depreciated options? ","hoverEvent":{"action":"show_text","value":{"text":"These settings have been hidden here as they are known to give an unfair advantage to either team. Enable them at your own risk!"}}},{"text":"[Click Here]","color":"gray","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:infomenu/depreciated"},"hoverEvent":{"action":"show_text","value":{"text":"View depreciated settings"}}}]

tellraw @s ["","Have the Graves datapack installed? ",{"text":"[Configure graves here]","color":"gray","clickEvent":{"action":"run_command","value":"/function graves:config"},"hoverEvent":{"action":"show_text","contents":["View graves config"]}}]
