#> RoleSelector gets to decide everyone's roles
tellraw @s [{"text":"===== Role Selector Menu =====","color":"gold"}]
#execute as @a[tag=RoleSelector] run tellraw @s Hello RoleSelector!

#> I forgot what this was for
tellraw @s ["","Choose which team shall each player be part of!"]
tellraw @s ["","Player1: [Runners] [Hunters]"]
tellraw @s ["","Player2: [Runners] [Hunters]"]
#> Repeat the above for every player

#> Tell admin that the datapack can support a maximum of 3 Hunters and 9 Runners