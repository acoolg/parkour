execute as @a[scores={development=1}] run titleraw @s actionbar {"rawtext":[{"text":"§6腳前方塊§f:§3"},{"score":{"name":"@s","objective":"feetblock"}},{"text":"§c||"},{"text":"§6碰到牆壁§f:§3"},{"score":{"name":"@s","objective":"hitwall"}},{"text":"§c||"},{"text":"§6腳下空氣§f:§3"},{"score":{"name":"@s","objective":"feetair"}},{"text":"§c||"},{"text":"§6腳前柵欄§f:§3"},{"score":{"name":"@s","objective":"feetfence"}},{"text":"§c||"},{"text":"§6眼前方塊§f:§3"},{"score":{"name":"@s","objective":"eyeblock"}}]}
execute as @a[scores={development=1}] run scoreboard players set @s energy -1
#sss
