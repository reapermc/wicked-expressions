# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 18,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
scoreboard players set $we_copy_args#qint$0 reapermc.wicked_expressions 100
```

`@function demo:test`

```mcfunction
scoreboard players set $we_copy_args#qint$1 reapermc.wicked_expressions 0
scoreboard players operation $we_copy_args#qint$2 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$1", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"score": {"name": "$we_copy_args#qint$2", "objective": "reapermc.wicked_expressions"}}
tellraw @s "a"
```

`@function demo:test1`

```mcfunction
scoreboard players set $we_copy_args#qint$1 reapermc.wicked_expressions 0
scoreboard players operation $we_copy_args#qint$2 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$1", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"score": {"name": "$we_copy_args#qint$2", "objective": "reapermc.wicked_expressions"}}
tellraw @s "a"
```

`@function demo:test2`

```mcfunction
tellraw @s 100
```

`@function demo:test3`

```mcfunction
scoreboard players operation $we_copy_args#qint$3 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$3", "objective": "reapermc.wicked_expressions"}}
```

`@function demo:test4`

```mcfunction
scoreboard players operation $we_copy_args#qint$3 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$3", "objective": "reapermc.wicked_expressions"}}
```

`@function demo:test5`

```mcfunction
execute store result score $we_copy_args#qint$3 reapermc.wicked_expressions run data get entity @s Health 1
tellraw @s {"score": {"name": "$we_copy_args#qint$3", "objective": "reapermc.wicked_expressions"}}
```

### we_copy_args

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$2 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$3 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$0 reapermc.wicked_expressions
```

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_copy_args:reapermc/wicked_expressions/loader`

```mcfunction
function we_copy_args:reapermc/wicked_expressions/loader/prio_0
function we_copy_args:reapermc/wicked_expressions/loader/prio_1
function we_copy_args:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_copy_args:reapermc/wicked_expressions/loader"
  ]
}
```
