gamerule sendcommandfeedback false
gamerule commandblockoutput false

#這可以辨別所有腳下柵欄
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:oak_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:birch_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:acacia_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:bamboo_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:cherry_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:jungle_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:spruce_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:warped_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:crimson_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:dark_oak_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:mangrove_fence run scoreboard players set @s feetfence 1
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:nether_brick_fence run scoreboard players set @s feetfence 1

#這可以辨別腳前不是柵欄
execute anchored feet as @a at @s unless block ^ ^ ^0.7 minecraft:air run scoreboard players set @s feetfence 0

#這可以辨別眼前的牆
execute anchored eyes as @a at @s unless block ^ ^ ^0.7 minecraft:air run scoreboard players set @s eyeblock 1
execute anchored feet as @a[scores={eyeblock=1}] at @s unless block ^ ^ ^1 minecraft:air run scoreboard players set @s feetblock 1
execute as @s[scores={feetblock=1,eyeblock=1}] run scoreboard players set @s hitwall 1

#這可以辨別前面不是牆
execute anchored eyes as @a at @s if block ^ ^ ^0.7 minecraft:air run scoreboard players set @s eyeblock 0
execute anchored feet as @a at @s if block ^ ^ ^0.7 minecraft:air run scoreboard players set @s feetblock 0
execute as @s[scores={feetblock=0}] run scoreboard players set @s hitwall 0
execute as @s[scores={eyeblock=0}] run scoreboard players set @s hitwall 0

#這可以辨別腳下是空氣
execute as @a at @a if block ~ ~-1 ~ minecraft:air run scoreboard players set @s feetair 1
execute as @a at @a unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s feetair 0
