#> Update player locations
execute as @a run execute store result score @s hnr.xpos run data get entity @s Pos[0]
execute as @a run execute store result score @s hnr.ypos run data get entity @s Pos[1]
execute as @a run execute store result score @s hnr.zpos run data get entity @s Pos[2]

#> Role specific functions
function hunters_and_runners:runners/tick
function hunters_and_runners:hunters/tick
function hunters_and_runners:jester/tick

#> If the first player in a match has reached the nether or end respectively, disable announceAdvancements for the dimension (fix for a bug on Bukkit/Spigot servers)
execute if entity @a[nbt={Dimension:"minecraft:the_nether"}] run execute if score nether_loaded hnr.settings matches 0 run execute at @a[nbt={Dimension:"minecraft:the_nether"}] run gamerule announceAdvancements false
execute if entity @a[nbt={Dimension:"minecraft:the_nether"}] run execute if score nether_loaded hnr.settings matches 0 run execute at @a[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set nether_loaded hnr.settings 1
execute if entity @a[nbt={Dimension:"minecraft:the_end"}] run execute if score end_loaded hnr.settings matches 0 run execute at @a[nbt={Dimension:"minecraft:the_end"}] run gamerule announceAdvancements false
execute if entity @a[nbt={Dimension:"minecraft:the_end"}] run execute if score end_loaded hnr.settings matches 0 run execute at @a[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set end_loaded hnr.settings 1

#> When a player kills the Ender Dragon (doesn't have to be a runner since it is the hunter's job to defend the ender dragon)
execute if entity @a[scores={hnr.dragonkilled=1}] run tellraw @a ["",{"selector":"@a[scores={hnr.dragonkilled=1}]","color":"red"},{"text":" has killed the Ender Dragon!","color":"red"}]
execute if entity @a[scores={hnr.dragonkilled=1}] run tellraw @a {"text":"Runners win!","color":"red"}
execute if entity @a[scores={hnr.dragonkilled=1}] run tellraw @a ["","Admins, ",{"text":"[Click Here] ","color":"aqua","clickEvent":{"action":"run_command","value":"/function hunters_and_runners:reset/resetconfirm"}},"to reset the game!"]
execute if entity @a[scores={hnr.dragonkilled=1}] run scoreboard players set @a hnr.dragonkilled 0

#> When healer is nearby, regenerate player health
execute as @a[scores={hnr.ishealer=0}] at @a[scores={hnr.ishealer=0}] run effect give @a[scores={hnr.ishealer=1},distance=0..15] minecraft:regeneration 4 0 true
execute as @a[scores={hnr.ishealer=1}] at @a[scores={hnr.ishealer=1}] run effect give @a[scores={hnr.ishealer=0},distance=0..15] minecraft:regeneration 4 0 true
execute as @a[scores={hnr.ishealer=1}] at @a[scores={hnr.ishealer=1}] run effect give @a[scores={hnr.ishealer=1},distance=2..15] minecraft:regeneration 4 0 true 

#> When new player is detected, set gamemode to adventure mode
execute as @a[scores={hnr.showwelcmsg=0}] run gamemode adventure @s
execute as @a[scores={hnr.showwelcmsg=0}] run scoreboard players set @s hnr.showwelcmsg 1

#> Run this function again after 1s
schedule function hunters_and_runners:long_tick 1s