# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 15,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
execute store result score $we_var_type_cast_bool#int$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_var_type_cast_bool.var.byte[0][0] 1
scoreboard players operation $we_var_type_cast_bool#int$0 reapermc.wicked_expressions = $we_var_type_cast_bool#int$1 reapermc.wicked_expressions
execute store result score $we_var_type_cast_bool#bool$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_var_type_cast_bool.var.byte[0][0] 1
scoreboard players operation $we_var_type_cast_bool#bool$0 reapermc.wicked_expressions = $we_var_type_cast_bool#bool$1 reapermc.wicked_expressions
```

### we_var_type_cast_bool

`@function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_type_cast_bool.var.byte
data modify storage reapermc:wicked_expressions data.we_var_type_cast_bool.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
scoreboard players reset $we_var_type_cast_bool#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_var_type_cast_bool#int$0 reapermc.wicked_expressions
scoreboard players reset $we_var_type_cast_bool#int$1 reapermc.wicked_expressions
scoreboard players reset $we_var_type_cast_bool#bool$1 reapermc.wicked_expressions
```

`@function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_type_cast_bool:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_0
function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_1
function we_var_type_cast_bool:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_type_cast_bool:reapermc/wicked_expressions/loader"
  ]
}
```
