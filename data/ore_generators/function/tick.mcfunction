execute as @e[tag=generator,type=marker] at @s if block ~ ~ ~ minecraft:air run scoreboard players set @s .cooldown 100
execute as @e[tag=generator,type=marker] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bedrock
scoreboard players remove @e[type=marker,tag=generator,scores={.cooldown=1..}] .cooldown 1
execute as @e[tag=generator,type=marker] at @s if score @s .cooldown matches ..0 run function ore_generators:place_ore
recipe give @a ore_generators:recipe_book