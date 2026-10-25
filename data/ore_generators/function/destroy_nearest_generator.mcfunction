schedule function ore_generators:revoke_advancement 5t
execute as @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker] at @s run setblock ~ ~ ~ air
kill @e[distance=..5,tag=generator,sort=nearest,limit=1,type=marker]
tellraw @p {"text":"§c§l[§4§lOre Generators§c§l] §7You have destroyed the nearest generator!"}