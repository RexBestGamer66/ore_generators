execute as @e[tag=generator,type=marker] at @s if block ~ ~ ~ minecraft:air run function ore_generators:set_cooldown
execute as @e[tag=generator,type=marker] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=generator,type=marker] at @s if score @s .cooldown matches ..0 run function ore_generators:place_ore
recipe give @a ore_generators:recipe_book