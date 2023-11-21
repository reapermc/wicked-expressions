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
scoreboard players set $we_copy_args#qint$0 reapermc.wicked_expressions 0
scoreboard players set $we_copy_args#qint$1 reapermc.wicked_expressions 100
scoreboard players set $we_copy_args#qint$2 reapermc.wicked_expressions 42
data modify storage reapermc:wicked_expressions data.we_copy_args.var.byte[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_copy_args.var.byte[0][0]._index set value 0b
data modify storage reapermc:wicked_expressions data.we_copy_args.var.byte[0][0] set value 8b
scoreboard players operation $we_copy_args#qint$3 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_copy_args.var.int[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_copy_args.var.int[0][0]._index set value 0
execute store result storage reapermc:wicked_expressions data.we_copy_args.var.int[0][0] int 1 run scoreboard players get $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$0 reapermc.wicked_expressions = $we_copy_args#qint$2 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.0 set from storage reapermc:wicked_expressions data.we_copy_args.var.byte[0][0]
tellraw @s {"score": {"name": "$we_copy_args#qint$3", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"nbt": "data.we_copy_args.var.int[0][0]", "storage": "reapermc:wicked_expressions"}
tellraw @s {"score": {"name": "$we_copy_args#copy_args$0", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"nbt": "data.we_copy_args.copy_args.0", "storage": "reapermc:wicked_expressions"}
```

`@function demo:example2`

```mcfunction
scoreboard players operation $we_copy_args#qint$4 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$5 reapermc.wicked_expressions = $we_copy_args#qint$1 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$4", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"score": {"name": "$we_copy_args#qint$5", "objective": "reapermc.wicked_expressions"}}
scoreboard players operation $we_copy_args#qint$4 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$5 reapermc.wicked_expressions = $we_copy_args#qint$1 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$we_copy_args#qint$4", "objective": "reapermc.wicked_expressions"}}
tellraw @s {"score": {"name": "$we_copy_args#qint$5", "objective": "reapermc.wicked_expressions"}}
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
scoreboard players reset $we_copy_args#qint$4 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$5 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$2 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_copy_args.var.byte
data modify storage reapermc:wicked_expressions data.we_copy_args.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
scoreboard players reset $we_copy_args#qint$3 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_copy_args.var.int
data modify storage reapermc:wicked_expressions data.we_copy_args.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
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
