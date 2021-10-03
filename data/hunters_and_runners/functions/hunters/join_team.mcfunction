#>Note: Function used to turn runners into hunters upon death

#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.hunters.join 0

#> Add player to the team
team join hunters
#team modify hunters color aqua
scoreboard players add Hunters hnr.teams.amount 1

#> Announce in chat player has joined the team
#tellraw @a [{"selector":"@s","color":"aqua"}," joined the Hunters"]
tellraw @s ["",{"text":"You are now a Hunter,","color":"aqua"},{"text":"\n"},{"text":"Keep the compass in your main/off hand or the last slot on the hotbar for it to update automatically.","color":"aqua"},{"text":"\n"},{"text":"Note: The compass makes a noise that can be heard by others when held in the main/offhand slot.","italic":true,"color":"gray"}]

#> Give the hunters a compass to track players
function hunters_and_runners:hunters/give_compass
function hunters_and_runners:hunters/spells/set_cooldown
schedule function hunters_and_runners:hunters/spells/reduce_cooldown 1s

#>Tell runners that they've switched teams
#title @s times 20 100 20
#title @s title {"text":"Hunter","bold":true,"color":"aqua"}
#title @s subtitle ["",{"selector":"@a[team=hunters]","color":"aqua"},{"text":" are the hunters","color":"white"},{"text":" "}]
