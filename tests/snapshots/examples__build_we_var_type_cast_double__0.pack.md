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
 
# Bool -> Double
execute store result storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][2] double 1 run scoreboard players get $we_var_type_cast_double#bool$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][2]
 
# Byte -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.byte[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.byte[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][3] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.byte[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][3]
 
# Short -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.short[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.short[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][4] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.short[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][4]
 
# Int -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.int[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][5] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.int[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][5]
 
# Long -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.long[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.long[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][6] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.long[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][6]
 
# Float -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.float[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.float[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][7] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.float[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][7]
 
# Double -> Double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double[0][1]
```

### we_var_type_cast_double

`@function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
scoreboard players reset $we_var_type_cast_double#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.byte
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.long
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_double.var.float
data modify storage reapermc:wicked_expressions data.we_var_type_cast_double.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_type_cast_double:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_0
function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_1
function we_var_type_cast_double:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_type_cast_double:reapermc/wicked_expressions/loader"
  ]
}
```
