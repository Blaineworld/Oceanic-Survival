tag @a[scores={-oceanic-deaths=1..}] remove -oceanic-spawned
function oceanic:update_objectives
execute as @a[tag=!-oceanic-airbreather,gamemode=!creative,gamemode=!spectator] run function oceanic:player_tick
scoreboard players set @a[tag=!-oceanic-spawned] -oceanic-timer -3000
scoreboard players set @a[tag=!-oceanic-spawned] -oceanic-air 300
scoreboard players set @a[scores={-oceanic-health=..0}] -oceanic-timer -3000
scoreboard players set @a -oceanic-deaths 0
tag @a add -oceanic-spawned