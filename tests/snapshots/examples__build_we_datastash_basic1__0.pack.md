# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 10,
    "description": ""
  }
}
```

### wicked_expressions

`@function wicked_expressions:datastash/garbage_collector1`

```mcfunction
scoreboard players set #temp wicked_expressions.datastash 0
execute on vehicle run scoreboard players set #temp wicked_expressions.datastash 1
scoreboard players operation $temp wicked_expressions = #temp wicked_expressions.datastash
execute if score $temp wicked_expressions matches 0 run kill @s
```

`@function wicked_expressions:datastash/unregister2`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run kill @s
scoreboard players reset @s wicked_expressions.datastash
```

`@function wicked_expressions:datastash/unregister1`

```mcfunction
tag @s remove wicked_expressions.datastash.registered
execute if entity @s[type=player] run function wicked_expressions:datastash/unregister2
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run kill @s
```

`@function wicked_expressions:datastash/unregister`

```mcfunction
execute if entity @s[type=!marker, tag=wicked_expressions.datastash.registered] run function wicked_expressions:datastash/unregister1
```

`@function wicked_expressions:datastash/register_player1`

```mcfunction
scoreboard players operation @s wicked_expressions.datastash = #index wicked_expressions.datastash
tag @s remove wicked_expressions.datastash.temp_marker_init
```

`@function wicked_expressions:datastash/register_player`

```mcfunction
forceload add 0 0
summon marker 0 0 0 {Tags: ["wicked_expressions.datastash.stash.player", "wicked_expressions.datastash.temp_marker_init"], CustomName: '{"text": "wicked_expressions.datastash.stash.player", "color": "green"}'}
execute as @e[type=marker, tag=wicked_expressions.datastash.temp_marker_init] run function wicked_expressions:datastash/register_player1
scoreboard players operation @s wicked_expressions.datastash = #index wicked_expressions.datastash
scoreboard players add #index wicked_expressions.datastash 1
```

`@function wicked_expressions:datastash/register_mob`

```mcfunction
execute at @s run summon marker ~ ~ ~ {Tags: ["wicked_expressions.datastash.stash.mob", "wicked_expressions.datastash.temp_init"], CustomName: '{"text": "wicked_expressions.datastash.stash.mob", "color": "green"}'}
ride @e[type=marker, tag=wicked_expressions.datastash.temp_init, limit=1] mount @s
tag @e[type=marker, tag=wicked_expressions.datastash.temp_init] remove wicked_expressions.datastash.temp_init
```

`@function wicked_expressions:datastash/register`

```mcfunction
execute if entity @s[type=player] run function wicked_expressions:datastash/register_player
execute if entity @s[type=!player] run function wicked_expressions:datastash/register_mob
tag @s add wicked_expressions.datastash.registered
```

`@function wicked_expressions:datastash/garbage_collector`

```mcfunction
schedule function wicked_expressions:datastash/garbage_collector 100 replace
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.mob] run function wicked_expressions:datastash/garbage_collector1
```

### demo

`@function demo:main`

```mcfunction
function wicked_expressions:datastash/unregister
execute if entity @s[type=!marker, tag=!wicked_expressions.datastash.registered] run function wicked_expressions:datastash/register
execute if entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/0
execute unless entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/0_cond_0
execute if entity @s[type=!marker, tag=!wicked_expressions.datastash.registered] run function wicked_expressions:datastash/register
execute if entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/1
execute unless entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/1_cond_0
execute if entity @s[type=!marker, tag=!wicked_expressions.datastash.registered] run function wicked_expressions:datastash/register
execute if entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/2
execute unless entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/2_cond_0
execute if entity @s[type=!marker, tag=!wicked_expressions.datastash.registered] run function wicked_expressions:datastash/register
execute if entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/3
execute unless entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/3_cond_0
execute if entity @s[type=!marker, tag=!wicked_expressions.datastash.registered] run function wicked_expressions:datastash/register
execute if entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/4
execute unless entity @s[type=marker] run function we_datastash_basic1:wicked_expressions/datastash/cache/4_cond_0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_datastash_basic1:wicked_expressions/scoreboard/setup",
    "wicked_expressions:datastash/garbage_collector"
  ]
}
```

### we_datastash_basic1

`@function we_datastash_basic1:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/0_pmarker_find`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run function we_datastash_basic1:wicked_expressions/datastash/cache/0
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/0_cond_0`

```mcfunction
execute if entity @s[type=player] run function we_datastash_basic1:wicked_expressions/datastash/cache/0_pmarker_find
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run function we_datastash_basic1:wicked_expressions/datastash/cache/0
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/1_pmarker_find`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run function we_datastash_basic1:wicked_expressions/datastash/cache/1
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/1_cond_0`

```mcfunction
execute if entity @s[type=player] run function we_datastash_basic1:wicked_expressions/datastash/cache/1_pmarker_find
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run function we_datastash_basic1:wicked_expressions/datastash/cache/1
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/2_pmarker_find`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run function we_datastash_basic1:wicked_expressions/datastash/cache/2
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/2_cond_0`

```mcfunction
execute if entity @s[type=player] run function we_datastash_basic1:wicked_expressions/datastash/cache/2_pmarker_find
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run function we_datastash_basic1:wicked_expressions/datastash/cache/2
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/3_pmarker_find`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run function we_datastash_basic1:wicked_expressions/datastash/cache/3
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/3_cond_0`

```mcfunction
execute if entity @s[type=player] run function we_datastash_basic1:wicked_expressions/datastash/cache/3_pmarker_find
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run function we_datastash_basic1:wicked_expressions/datastash/cache/3
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/4_pmarker_find`

```mcfunction
scoreboard players operation #temp wicked_expressions.datastash = @s wicked_expressions.datastash
execute as @e[type=marker, tag=wicked_expressions.datastash.stash.player] if score #temp wicked_expressions.datastash = @s wicked_expressions.datastash run function we_datastash_basic1:wicked_expressions/datastash/cache/4
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/4_cond_0`

```mcfunction
execute if entity @s[type=player] run function we_datastash_basic1:wicked_expressions/datastash/cache/4_pmarker_find
execute if entity @s[type=!player] on passengers if entity @s[type=marker, tag=wicked_expressions.datastash.stash.mob] run function we_datastash_basic1:wicked_expressions/datastash/cache/4
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/0_payload`

```mcfunction
data modify entity @s data.test.path set value 69
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/1_payload`

```mcfunction
data modify entity @s data.bar set value 10
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/2_payload`

```mcfunction
data modify storage wicked_expressions:private datastash.temp set from entity @s data.bar
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/3_payload`

```mcfunction
data modify entity @s data.test.path set from storage wicked_expressions:private datastash.temp
```

`@function we_datastash_basic1:wicked_expressions/datastash/cache/4_payload`

```mcfunction
data modify entity @s data.test.path append value "test"
```
