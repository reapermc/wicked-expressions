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
data modify storage reapermc:wicked_expressions data.we_var_static.var.int[0][0] set value 10
data modify storage reapermc:wicked_expressions data.we_var_static.var.int[0][1] set value 20
data modify storage reapermc:wicked_expressions data.we_var_static.var.int[0][2] set value 10
data modify storage reapermc:wicked_expressions data.we_var_static.var.int[0][1] set value 20
```

`@function demo:static_path`

```mcfunction
data modify storage reapermc:wicked_expressions data.we_var_static.var.int[0][3] set value 10
data modify storage reapermc:wicked_expressions data.we_var_static.var.float[0][0] set value 3.14159f
data modify storage reapermc:wicked_expressions data.we_var_static.var.float[0][1] set value 1.5f
```

### we_var_static

`@function we_var_static:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_static:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_static.var.float
data modify storage reapermc:wicked_expressions data.we_var_static.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_var_static.var.int
data modify storage reapermc:wicked_expressions data.we_var_static.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
```

`@function we_var_static:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_static:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_static:reapermc/wicked_expressions/loader/prio_0
function we_var_static:reapermc/wicked_expressions/loader/prio_1
function we_var_static:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_static:reapermc/wicked_expressions/loader"
  ]
}
```
