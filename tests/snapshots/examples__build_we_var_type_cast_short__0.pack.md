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
 
# Bool -> Short
execute store result storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][2] short 1 run scoreboard players get $we_var_type_cast_short#bool$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][2]
 
# Byte -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][3] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.byte[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][3]
 
# Short -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][1]
 
# Int -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][4] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.int[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][4]
 
# Long -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][5] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.long[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][5]
 
# Float -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][6] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.float[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][6]
 
# Double -> Short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][7] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.double[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short[0][7]
```

### we_var_type_cast_short

`@function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
scoreboard players reset $we_var_type_cast_short#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.byte
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.long
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.float
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_short.var.double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_short.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
```

`@function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_type_cast_short:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_0
function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_1
function we_var_type_cast_short:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_type_cast_short:reapermc/wicked_expressions/loader"
  ]
}
```
