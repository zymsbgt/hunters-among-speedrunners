#> Clear all teams and set everyone's gamemode to survival
team empty runners
team empty hunters
team empty jester
gamemode survival @a[gamemode=!spectator]
title @a[gamemode=spectator] title {"text":"Spectator"}
title @a[gamemode=spectator] subtitle {"text":"You have chosen to spectate the match"}

#> Set gamerules here, if any
scoreboard players reset @a hnr.killed
scoreboard players reset @a hnr.killed_by
gamerule announceAdvancements false
gamerule mobGriefing true
execute at @p run setworldspawn ~ ~ ~
execute if score confirm_kills hnr.settings matches 2 run scoreboard objectives setdisplay sidebar hnr.teams.amount
gamerule spectatorsGenerateChunks false
execute if score worldborder_distance hnr.settings matches 0 run worldborder set 50000
execute if score worldborder_distance hnr.settings matches 1 run worldborder set 6000
execute if score worldborder_distance hnr.settings matches 2 run worldborder set 12000
execute if score worldborder_distance hnr.settings matches 3 run worldborder set 18000
execute if score display_health hnr.settings matches 1 run scoreboard objectives setdisplay belowName hnr.runners.hp
execute if score display_health hnr.settings matches 2 run scoreboard objectives setdisplay list hnr.runners.hp
execute if score display_health hnr.settings matches 3 run scoreboard objectives setdisplay belowName hnr.runners.hp
execute if score display_health hnr.settings matches 3 run scoreboard objectives setdisplay list hnr.runners.hp
execute if score show_death_messages hnr.settings matches 1 run gamerule showDeathMessages true
execute if score show_death_messages hnr.settings matches 0 run gamerule showDeathMessages false
execute if score spell_cooldown_debug hnr.settings matches 1 run scoreboard objectives setdisplay sidebar hnr.spell.cool
execute if score enable_team_colors hnr.settings matches 1 run team modify hunters color aqua
execute if score enable_team_colors hnr.settings matches 1 run team modify runners color red
execute if score enable_team_colors hnr.settings matches 1 run team modify jester color light_purple
execute if score send_command_feedback hnr.settings matches 1 run gamerule sendCommandFeedback true
execute if score send_command_feedback hnr.settings matches 0 run gamerule sendCommandFeedback false
scoreboard players set nether_loaded hnr.settings 0
scoreboard players set end_loaded hnr.settings 0

#>Starting locations for players
tp @a @s
spreadplayers ~ ~ 0 10 false @a

#> Assign Jester, if enabled
execute if score enable_jester hnr.settings matches 1 run team join jester @r[team=,gamemode=survival]

#> Assign hunters
execute if score number_of_hunters hnr.settings matches 1 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 2 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 2 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 3 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 3 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 3 run team join hunters @r[team=,gamemode=survival]
execute if score number_of_hunters hnr.settings matches 1 run scoreboard players set Hunters hnr.teams.amount 1
execute if score number_of_hunters hnr.settings matches 2 run scoreboard players set Hunters hnr.teams.amount 2
execute if score number_of_hunters hnr.settings matches 3 run scoreboard players set Hunters hnr.teams.amount 3

#> Assign Runners
team join runners @a[team=,gamemode=survival,limit=9,sort=random]
title @a[team=,gamemode=!spectator] title {"text":"Spectator"}
title @a[team=,gamemode=!spectator] subtitle {"text":"Sorry, the player limit has been reached"}
gamemode spectator @a[team=!]

#> Assign Healer, if enabled
execute if score enable_healer hnr.settings matches 1 run scoreboard players set @r[team=!] hnr.ishealer 1

#> Clear all potion effects, XP, inventory and ground items
clear @a
effect clear @a
xp set @a 0 points
kill @e[type=item]

#> Refill hunger
time set 0
effect give @a minecraft:saturation 3 255 true

#> Setting team variables
team modify runners deathMessageVisibility never
team modify hunters deathMessageVisibility hideForOtherTeams
team modify jester deathMessageVisibility never
team modify hunters seeFriendlyInvisibles true
team modify runners seeFriendlyInvisibles false
execute if score enable_team_colors hnr.settings matches 1 run team modify hunters nametagVisibility hideForOtherTeams
execute if score enable_team_colors hnr.settings matches 1 run team modify runners nametagVisibility never
execute if score enable_team_colors hnr.settings matches 1 run team modify jester nametagVisibility never

execute if score give_players_invisibility hnr.settings matches 1 run effect give @a minecraft:invisibility 10 0 true
execute if score give_players_invisibility hnr.settings matches 2 run effect give @a minecraft:invisibility 20 0 true
execute if score give_players_invisibility hnr.settings matches 3 run effect give @a minecraft:invisibility 30 0 true

#> Set gamemode to survival mode
gamemode survival @a[team=hunters]
gamemode survival @a[team=runners]
gamemode survival @a[team=jester]
execute as @a[gamemode=!spectator] run scoreboard players add hnr.playercount hnr.settings

#> Announce which team they are on
title @a times 20 100 20
title @a[team=runners] title {"text":"Runner","bold":true,"color":"red"}
execute if score number_of_hunters hnr.settings matches 1 run title @a[team=runners] subtitle ["",{"text":"There is "},{"text":"1 hunter","color":"aqua"},{"text":" in the game"}]
execute if score number_of_hunters hnr.settings matches 2 run title @a[team=runners] subtitle ["",{"text":"There are "},{"text":"2 hunters","color":"aqua"},{"text":" in the game"}]
execute if score number_of_hunters hnr.settings matches 3 run title @a[team=runners] subtitle ["",{"text":"There are "},{"text":"3 hunters","color":"aqua"},{"text":" in the game"}]
execute if score set_runners_goal hnr.settings matches 0 run tellraw @a[team=runners] [{"text":"You are a Runner. Find and kill either the Ender Dragon or all hunters to win.","color":"red"}]
execute if score set_runners_goal hnr.settings matches 1 run tellraw @a[team=runners] [{"text":"You are a Runner. Spawn and kill a Wither or kill all hunters to win.","color":"red"}]
execute if score set_runners_goal hnr.settings matches 2 run tellraw @a[team=runners] [{"text":"You are a Runner. Defend a village from a raid or kill all hunters to win.","color":"red"}]
execute if score set_runners_goal hnr.settings matches 3 run tellraw @a[team=runners] [{"text":"You are a Runner. Find and kill either a Warden or all hunters to win.","color":"red"}]
title @a[team=hunters] title {"text":"Hunter","bold":true,"color":"aqua"}
title @a[team=hunters] subtitle ["",{"selector":"@a[team=hunters]","color":"aqua"},{"text":" are the hunters","color":"dark_aqua"},{"text":" "}]
tellraw @a[team=hunters] ["",{"text":"You are now a Hunter,","color":"aqua"},{"text":"\n"},{"text":"Keep the compass in your main/off hand or the last slot on the hotbar for it to update automatically.","color":"aqua"},{"text":"\n"},{"text":"Note: The compass makes a noise that can be heard by others when held in the main/offhand slot.","italic":true,"color":"gray"}]
title @a[team=jester] title {"text":"Jester","bold":true,"color":"light_purple"}
title @a[team=jester] subtitle {"text":"Get killed by another player to win!"}
tellraw @a[team=jester] ["",{"text":"You are "},{"text":"The Jester","color":"dark_purple"},{"text":". Have fun causing chaos! Other players will die when they kill you."}]
execute if score enable_jester hnr.settings matches 1 run tellraw @a[team=!jester] {"text":"There is a mystery Jester in the game. Don't kill them else you'll be eliminated from the game","color":"dark_purple"}
tellraw @a[scores={hnr.ishealer=1..}] {"text":"You are a healer, too! You and your friends will regenerate health as long as you stick together!","italic":true}

#> Reset Kill Counters
scoreboard players set @a[gamemode=!spectator] hnr.killed 0
scoreboard players set @a[gamemode=!spectator] hnr.killed_by 0

#> Give Signal Flares and Grave Keys
playsound minecraft:block.note_block.pling master @a[team=!hunters] ~ ~ ~ 50 1
execute if score number_of_hunters hnr.settings matches 2 run give @a[gamemode=survival] firework_rocket{display:{Name:"\"Proximity Signal Flare\"",Lore:["\"Launch it to get attention from nearby players. Use wisely!\""]},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;14602026]}]}} 1
execute if score number_of_hunters hnr.settings matches 3 run give @a[gamemode=survival] firework_rocket{display:{Name:"\"Proximity Signal Flare\"",Lore:["\"Launch it to get attention from nearby players. Use wisely!\""]},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;14602026]}]}} 2
give @a[gamemode=survival] minecraft:player_head{gravesKey:1b,display:{Name:'["",{"text":"Grave Key","italic":false,"color":"yellow"}]',Lore:['{"text":"Right-click a grave while holding exactly one of this to forcibly open it.","color":"gray","italic":false}','{"text":"Placing this down will break its functionality.","color":"gray","italic":false}']},SkullOwner:{Id:[I;0,0,0,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWVjNzA3NjllMzYzN2E3ZWRiNTcwMmJjYzQzM2NjMjQyYzJmMjIzNWNiNzNiOTQwODBmYjVmYWZmNDdiNzU0ZSJ9fX0="}]}}} 1

#> Give Starter Kit
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] stone_sword
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] stone_axe
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] stone_pickaxe
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] torch 8
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] stick 4
execute if score give_starter_kit hnr.settings matches 1 run give @a[gamemode=!spectator] bread 4

#> Update Runner IDs
execute as @a[gamemode=survival,team=!hunters] run function hunters_and_runners:runners/id/clear
execute as @a[gamemode=survival,team=!hunters] run function hunters_and_runners:runners/id/apply

#> Give compasses
execute as @a[team=hunters] run function hunters_and_runners:hunters/give_compass
#execute as @a[team=hunters] run function hunters_and_runners:hunters/spells/set_cooldown
execute if score hunter_sabotage hnr.settings matches 0 run scoreboard players set @a[team=hunters] hnr.spell.cool 300
execute if score hunter_sabotage hnr.settings matches 1 run scoreboard players set @a[team=hunters] hnr.spell.cool 600
execute if score hunter_sabotage hnr.settings matches 2 run scoreboard players set @a[team=hunters] hnr.spell.cool 900
execute if score hunter_sabotage hnr.settings matches 3 run scoreboard players set @a[team=hunters] hnr.spell.cool 1800
execute if score hunter_sabotage hnr.settings matches 4 run scoreboard players set @a[team=hunters] hnr.spell.cool 2700
schedule function hunters_and_runners:hunters/spells/reduce_cooldown 1s

#> Set game stats to Running
scoreboard players set is_game_running hnr.settings 1

#> Warn all players if settings aren't compatible
execute if score environment_kill hnr.settings matches 0 run execute if score runners_on_death hnr.settings matches 3 run tellraw @a ["",{"text":"[Warning] ","color":"gold"},{"text":"Respawn if environmental kill: No players ","color":"red"},{"text":"is not compatible with ","color":"gold"},{"text":"Gametype: Tag mode","color":"aqua"}]
execute if score environment_kill hnr.settings matches 2 run execute if score confirm_kills hnr.settings matches 1.. run tellraw @a ["",{"text":"[Warning] ","color":"gold"},{"text":"Respawn if environmental kill: Hunters only ","color":"aqua"},{"text":"is only compatible with ","color":"gold"},{"text":"Announce Kills: Do not announce!","color":"red"}]
