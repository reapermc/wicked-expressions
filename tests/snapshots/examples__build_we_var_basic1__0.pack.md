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
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0][0] set value 46.0f
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0][0] set value 1.2353456f
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0][0] set value 5.4357543d
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0][0] set value 3.0d
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0][0] set from storage reapermc:wicked_expressions we_var_basic1.data.float[0][0]
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0][0] set from storage reapermc:wicked_expressions we_var_basic1.data.double[0][0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic1:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_basic1

`@function we_var_basic1:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/byte
function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/bool
function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/float
function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/double
function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/byte`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_basic1.data.byte
data modify storage reapermc:wicked_expressions we_var_basic1.data.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
```

`@function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $we_var_basic1#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_var_basic1#bool$1 reapermc.wicked_expressions
```

`@function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_basic1.data.float
data modify storage reapermc:wicked_expressions we_var_basic1.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/double`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_basic1.data.double
data modify storage reapermc:wicked_expressions we_var_basic1.data.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
```

`@function we_var_basic1:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $we_var_basic1#int$0 reapermc.wicked_expressions
```
