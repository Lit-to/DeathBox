#> db:summon

summon armor_stand ~ ~1 ~ {Tags:["box_","now_box"]}
loot replace entity @e[type=armor_stand,tag=now_box] armor.head loot db:player_head
execute rotated as @s run tp @e[type=armor_stand,tag=now_box] ~ ~1 ~ ~ ~
effect give @e[type=armor_stand,tag=now_box] glowing 100000 255 true
#setblock ~ ~2 ~ player_head{SkullOwner:{Id:[I;0,0,0,0]}}
#data modify block ~ ~2 ~ SkullOwner set from entity @s UUID


setblock ~ ~ ~ chest
setblock ~ ~1 ~ chest 


data modify block ~ ~1 ~ Items set from storage db: up.Items 
data modify block ~ ~ ~ Items set from storage db: under.Items 
#data remove storage db: up
#data remove storage db: under

tag @e remove now_box

