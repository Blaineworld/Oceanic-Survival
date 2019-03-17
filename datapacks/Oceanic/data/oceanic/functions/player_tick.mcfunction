execute if entity @s[scores={-oceanic-air_old=-42069000..42069000}] run scoreboard players operation @s -oceanic-air = @s -oceanic-air_old
execute as @s[scores={-oceanic-timer=0..,-oceanic-air=300..}] at @s run function oceanic:air_suffocation
execute as @s[scores={-oceanic-air=..0}] at @s run effect give @s minecraft:water_breathing 1 0 true
scoreboard players add @s[scores={-oceanic-air=300..}] -oceanic-timer 1
execute as @s[scores={-oceanic-air=..299}] run function oceanic:breathe_in