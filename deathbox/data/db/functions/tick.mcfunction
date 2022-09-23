#> db:tick
#execute as @a at @s run summon area_effect_cloud ~ ~ ~ {}
execute as @a at @s if score @s db_death matches 1.. run function db:generate
execute as @a at @s if score @s db_death matches 1.. run scoreboard players reset @s db_death


