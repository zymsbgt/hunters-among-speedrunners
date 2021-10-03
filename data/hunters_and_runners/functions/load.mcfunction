#> Load the chunk our shulker box and sign is in and surround it with bedrock
forceload add 0 0
fill -1 1 2 1 3 0 minecraft:bedrock
setblock 0 1 1 minecraft:shulker_box
setblock 0 2 1 minecraft:crimson_sign

#> Create scoreboards for player info
##> Settings
scoreboard objectives add hnr.settings dummy
##> Player positions
scoreboard objectives add hnr.xpos dummy
scoreboard objectives add hnr.ypos dummy
scoreboard objectives add hnr.zpos dummy
##> Player death event
scoreboard objectives add hnr.hunters.hp health
scoreboard objectives add hnr.runners.hp health
scoreboard objectives add hnr.killed playerKillCount
scoreboard objectives add hnr.killed_by minecraft.killed_by:minecraft.player
##> Total players in each team
scoreboard objectives add hnr.teams.amount dummy
scoreboard objectives modify hnr.teams.amount displayname {"text":"Players","color":"gold"}
scoreboard objectives modify hnr.runners.hp displayname {"text":"Health"}
scoreboard objectives add hnr.playercount dummy
##> Hunter Spells
scoreboard objectives add hnr.spell.cool dummy
##> Dummy scoreboard for temp variables
scoreboard objectives add hnr.dummy dummy
##> Usage of Signal Flares
scoreboard objectives add hnr.usedflare minecraft.used:firework_rocket
##> Right clicking compass for Hunters
scoreboard objectives add hnr.usedcompass minecraft.used:compass
##> Add Healer into the game
scoreboard objectives add hnr.ishealer dummy
##> Win Citeria
scoreboard objectives add hnr.dragonkilled minecraft.killed:minecraft.ender_dragon

#> Add triggers
##> Show the menu
scoreboard objectives add hnr.information trigger
##> Join the Hunters team
scoreboard objectives add hnr.hunters.join trigger
##> Join the Runners team
scoreboard objectives add hnr.runners.join trigger
##> Tracking specific Runners
scoreboard objectives add hnr.tracking_id trigger
##> Casting spells (Hunters)
scoreboard objectives add hnr.spell.cast trigger
##> Enable stats Menu
scoreboard objectives add hnr.stats trigger
##> Allows hunters to reset spell cooldown
scoreboard objectives add hnr.spellreset trigger
##> Various Hunter spells
scoreboard objectives add hnr.spell.list trigger


#> Add teams
team add hunters
team add runners
team add jester

#> Load default settings
function hunters_and_runners:settings/load

#> Show information to non hunter/runners
execute if score is_game_running hnr.settings matches 0 run execute as @a[team=!runners,team=!hunters] run function hunters_and_runners:information
execute if score is_game_running hnr.settings matches 1 run tellraw @a ["","Hunters Among Speedrunners datapack has been successfully reloaded! Not displaying information menu as a game is in progress. If hunter spell cooldowns have stopped, please ask an admin to ",{"text":"[Click Here]","color":"aqua","clickEvent":{"action":"run_command","value":"/schedule function hunters_and_runners:hunters/spells/reduce_cooldown 1s"},"hoverEvent":{"action":"show_text","contents":["This will resume the hunter's spell countdown"]}}]

#> Start tracking/updating compasses
function hunters_and_runners:long_tick

#> Add Bossbar (Experimental)
#bossbar add tracked {"text":"You are being tracked"}
bossbar set tracked max 20
bossbar set tracked color red
bossbar set tracked players @a[tag=tracking]
bossbar set tracked style notched_10
bossbar set tracked visible true
bossbar set tracked value 20