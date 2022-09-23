#> db:generate
#declare storage db:
data modify storage db: in.Inventory set from entity @s Inventory
data modify storage db: under.Items set value []
data modify storage db: up.Items set value []
scoreboard players add count db_death 0
function db:loop
execute align xz positioned ~0.5 ~ ~0.5 run function db:summon
clear @s

