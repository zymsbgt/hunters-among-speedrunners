#> Clear all teams and set everyone's gamemode to survival
team empty runners
team empty hunters
team empty jester
gamemode survival @a[gamemode=!spectator]
title @a[gamemode=spectator] title {"text":"Spectator"}
title @a[gamemode=spectator] subtitle {"text":"You have chosen to spectate the match"}
scoreboard players reset @a hnr.killed
scoreboard players reset @a hnr.killed_by

#> RoleSelector gets to decide everyone's roles
