scoreboard objectives add _ast_ dummy "Air Suffocation Timer"
scoreboard objectives add _hp_ health "Health Points"
scoreboard objectives add _air_ air "Air Meter"
scoreboard objectives add _dct_ deathCount "Death Count"
scoreboard players add @a _air_ 0
execute as @a[scores={_ast_=0..,_air_=300..},gamemode=!creative,gamemode=!spectator] at @s run function oceanic:ast
execute as @a[scores={_air_=..0},gamemode=!creative,gamemode=!spectator] at @s run effect give @s minecraft:water_breathing 1 255 true
scoreboard players add @a[scores={_air_=300..}] _ast_ 1
scoreboard players remove @a[scores={_ast_=-199..,_air_=..200}] _ast_ 1
scoreboard players remove @a[scores={_ast_=-198..,_air_=..100}] _ast_ 2
tag @a[scores={_dct_=1..}] remove _spn_
scoreboard players set @a[tag=!_spn_] _ast_ -900
scoreboard players set @a _dct_ 0
tag @a add _spn_