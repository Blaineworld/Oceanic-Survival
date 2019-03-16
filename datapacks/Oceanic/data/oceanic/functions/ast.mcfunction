effect give @s minecraft:poison 1 255 true
effect give @s[scores={_hp_=..1}] minecraft:hunger 2 23 true
kill @s[scores={_hp_=..1,_hgr_=..0}]
scoreboard players set @s _ast_ -120
scoreboard players remove @s[scores={_hp_=..1}] _ast_ 360