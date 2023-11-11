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
 
# Bool -> Int
execute store result storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][2] int 1 run scoreboard players get $we_var_type_cast_int#bool$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][2]
 
# Byte -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][3] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.byte[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][3]
 
# Short -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][4] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.short[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][4]
 
# Int -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][1]
 
# Long -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][5] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.long[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][5]
 
# Float -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][6] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.float[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][6]
 
# Double -> Int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][7] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.double[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int[0][7]
```

### we_var_type_cast_int

`@function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
scoreboard players reset $we_var_type_cast_int#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.byte
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.short
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.long
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.float
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_var_type_cast_int.var.double
data modify storage reapermc:wicked_expressions data.we_var_type_cast_int.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
```

`@function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_type_cast_int:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_0
function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_1
function we_var_type_cast_int:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_type_cast_int:reapermc/wicked_expressions/loader"
  ]
}
```
