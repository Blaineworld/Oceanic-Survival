effect give @s minecraft:poison 1 255 true
effect give @s[scores={-oceanic-health=..1}] minecraft:hunger 2 23 true
kill @s[scores={-oceanic-health=..1,-oceanic-food=..0}]
scoreboard players set @s -oceanic-timer -120
scoreboard players remove @s[scores={-oceanic-health=..1}] -oceanic-timer 360