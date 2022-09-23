#> db:in/under
scoreboard players remove count db_death 27
execute store result storage db: in.value.Slot int 1 run scoreboard players get count db_death
data modify storage db: under.Items append from storage db: in.value
scoreboard players add count db_death 27
