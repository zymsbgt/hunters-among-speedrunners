#> RoleSelector gets to decide everyone's roles
tellraw @s [{"text":"===== Role Selector Menu =====","color":"gold"}]
#execute as @a[tag=RoleSelector] run tellraw @s Hello RoleSelector!

#> Assign Jesters first
tellraw @s ["","Choose which team shall each player be part of!"]
tellraw @s ["","Player1: [Runners] [Hunters] [Jesters]"]
tellraw @s ["","Player2: [Runners] [Hunters] [Jesters]"]
#> Repeat the above for every player

#> Tell player we recommend maximum 2 Jesters, 3 Hunters and 9 Runners