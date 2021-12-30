#> Execute functions when a player uses a trigger
execute as @a[scores={hnr.hunters.join=1..}] run function hunters_and_runners:hunters/join_team
execute as @a[scores={hnr.runners.join=1..}] run function hunters_and_runners:runners/join_team
execute as @a[scores={hnr.information=1..}] run function hunters_and_runners:information
execute as @a[scores={hnr.spell.list=1..}] run function hunters_and_runners:hunters/spell
execute as @a[team=runners,scores={hnr.runners.hp=0}] run function hunters_and_runners:runners/death
execute as @a[team=hunters,scores={hnr.hunters.hp=0}] run function hunters_and_runners:hunters/death
execute as @a[team=jester,scores={hnr.runners.hp=0}] run function hunters_and_runners:jester/death
execute as @a[scores={hnr.stats=1..}] run function hunters_and_runners:stats
execute as @a[scores={hnr.spellreset=1..}] run function hunters_and_runners:reset/hunter_reset_cooldown
execute as @a[scores={hnr.retire=1..}] run function hunters_and_runners:reset/player_retire
execute as @a[scores={hnr.retirecnfm=1..}] run function hunters_and_runners:reset/player_retire_confirm

#>Enable triggers
scoreboard players enable @a hnr.hunters.join
scoreboard players enable @a hnr.runners.join
scoreboard players enable @a hnr.information
scoreboard players enable @a hnr.tracking_id
scoreboard players enable @a hnr.spell.list
scoreboard players enable @a hnr.stats
scoreboard players enable @a hnr.spellreset
scoreboard players enable @a hnr.spell.cast
scoreboard players enable @a hnr.retire
scoreboard players enable @a hnr.retirecnfm

#> Remove any rouge tracking or rescue compasses
kill @e[nbt={Item:{tag:{compass_type:"tracking_device"}}}]

#> Alert all players when someone uses a signal flare
execute as @a[scores={hnr.usedflare=1..}] run function hunters_and_runners:flare/used_flare