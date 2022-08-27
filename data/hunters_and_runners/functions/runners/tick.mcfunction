##> Function activated every second, runner specific time events are written here.
##> This function is called from long_tick

#> Detect cheating runners
execute as @a[scores={hnr.tracking_id=10..}] run function hunters_and_runners:anticheat/modified_tracking_id
execute as @a[scores={hnr.tracking_id=..-1}] run function hunters_and_runners:anticheat/modified_tracking_id
#> To-do: Test to see if 2 or more runners have the same hnr.tracking_id
