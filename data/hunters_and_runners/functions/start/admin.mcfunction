##> Notice: This function is currently unused

#> Clear all teams and set everyone's gamemode to survival
team empty runners
team empty hunters
gamemode survival @a[gamemode=!spectator]
title @a[gamemode=spectator] title {"text":"Spectator"}
title @a[gamemode=spectator] subtitle {"text":"You have chosen to spectate the match"}
scoreboard players reset @a hnr.killed
scoreboard players reset @a hnr.killed_by

#> Give all players a unique ID
scoreboard objectives add uid dummy
tag @a remove teamAssigned
execute as @a[gamemode=survival,team=!hunters] run function hunters_and_runners:runners/id/apply
# Shouldn't the above statement be hunters_and_runners:runners/id/clear instead of apply?
execute as @s run function hunters_and_runners:start/admin/information