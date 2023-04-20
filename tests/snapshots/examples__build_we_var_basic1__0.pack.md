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

### demo

`@function demo:main`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0] set value 46.0f
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0] set value 1.2353456f
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0] set value 5.4357543d
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0] set value 3.0d
data modify storage reapermc:wicked_expressions we_var_basic1.data.double[0] set from storage reapermc:wicked_expressions we_var_basic1.data.float[0]
data modify storage reapermc:wicked_expressions we_var_basic1.data.float[0] set from storage reapermc:wicked_expressions we_var_basic1.data.double[0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic1:reapermc/wicked_expressions/scoreboard_setup",
    "we_var_basic1:reapermc/wicked_expressions/runtime_var_flush_score",
    "we_var_basic1:reapermc/wicked_expressions/runtime_var_flush_storage"
  ]
}
```

### we_var_basic1

`@function we_var_basic1:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy "reapermc.wicked_expressions"
```

`@function we_var_basic1:reapermc/wicked_expressions/runtime_var_flush_score`

```mcfunction
scoreboard players reset $we_var_basic1#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_var_basic1#bool$1 reapermc.wicked_expressions
scoreboard players reset $we_var_basic1#int$0 reapermc.wicked_expressions
```

`@function we_var_basic1:reapermc/wicked_expressions/runtime_var_flush_storage`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_basic1.data.byte set value [0b]
data modify storage reapermc:wicked_expressions we_var_basic1.data.float set value [0.0f]
data modify storage reapermc:wicked_expressions we_var_basic1.data.double set value [0.0d]
```
