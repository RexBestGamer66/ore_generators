schedule function ore_generators:revoke_advancement 5t
execute as @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker] at @s if block ~ ~ ~ bedrock run kill @e[distance=..2,tag=cooldown_display,sort=nearest,limit=1,type=text_display]
execute as @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker] at @s run setblock ~ ~ ~ air

execute as @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker] at @s run function ore_generators:summon_block_drop

kill @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker]
tellraw @p {"text":"§c[§4§lOre Generators§c] §7You have destroyed the nearest generator!"}