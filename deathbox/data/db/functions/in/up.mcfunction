#> db:in/up

execute store result storage db: in.value.Slot int 1 run scoreboard players get count db_death
data modify storage db: up.Items append from storage db: in.value
