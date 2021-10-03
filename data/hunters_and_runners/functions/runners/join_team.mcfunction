#>Note: Function used by hunters/death_by_player in Tag Mode

#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.runners.join 0

#> Add player to the team
team join runners
#team modify runners color red

function hunters_and_runners:runners/id/update

#> Announce in chat player has joined the team
#tellraw @a [{"selector":"@s","color":"red"}," joined the Runners"]

#>Tell everyone which team they are on
#title @s times 20 100 20
#title @s title {"text":"Runner","bold":true,"color":"red"}
#title @s subtitle ["",{"text":"Kill the "},{"text":"Ender Dragon or all hunters","color":"aqua"},{"text":" to win!"}]