scoreboard objectives add .cooldown dummy "Cooldown"
schedule clear ore_generators:decrease_cooldown
schedule function ore_generators:decrease_cooldown 1s
tellraw @a {"text":"§c[§4§lOre Generators§c] §7Pack loaded."}