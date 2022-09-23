#> db:loop
data modify storage db: in.value set from storage db: in.Inventory[0]

execute if score count db_death matches ..26 run function db:in/up
execute if score count db_death matches 27.. run function db:in/under
data remove storage db: in.Inventory[0]
scoreboard players add count db_death 1

execute unless data storage db: {in:{Inventory:[]}} run function db:loop

