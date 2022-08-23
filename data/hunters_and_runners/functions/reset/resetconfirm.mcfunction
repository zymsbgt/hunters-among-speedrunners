#> Activates when Reset is pressed on information menu or when game ends

#> Clear all potion effects
effect clear @a

#> Reset variables to default values
execute as @a run gamerule sendCommandFeedback true
execute as @a run gamerule mobGriefing false
time set 0
scoreboard players set @a hnr.eligiblekit 0
scoreboard players reset @a hnr.spell.cool
scoreboard players reset Hunters hnr.teams.amount
scoreboard players set @a hnr.tracking_id 0
scoreboard players reset @a hnr.usedflare
scoreboard players set @a hnr.ishealer 0
scoreboard players reset @a hnr.spell.count
advancement revoke @a everything

#> Heal up all players
effect give @a minecraft:saturation 3 255 true

#> Clear teams
team leave @a

#> Activate information page
execute as @a run trigger hnr.information

#> Announce game reset
gamemode adventure @a
tellraw @a {"text":"Game has been reset!","color":"dark_red"}

#> Set game stats to Not Running
scoreboard players set is_game_running hnr.settings 0