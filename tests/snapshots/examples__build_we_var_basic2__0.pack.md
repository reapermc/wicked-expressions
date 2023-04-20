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
scoreboard players set $we_var_basic2#int$0 reapermc.wicked_expressions 1245
data modify storage reapermc:wicked_expressions we_var_basic2.data.float[0] set value 123.0f
data modify storage reapermc:wicked_expressions we_var_basic2.data.string[0] set value "hello"
data modify storage reapermc:wicked_expressions we_var_basic2.data.long[0] set value 35L
data modify storage reapermc:wicked_expressions we_var_basic2.data.double[0] set value 0.465d
data modify storage reapermc:wicked_expressions we_var_basic2.data.list[0] append value "hello"
data modify storage reapermc:wicked_expressions we_var_basic2.data.list[0] append value "world"
data modify storage reapermc:wicked_expressions we_var_basic2.data.list[0] append value "!"
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic2:reapermc/wicked_expressions/scoreboard_setup",
    "we_var_basic2:reapermc/wicked_expressions/runtime_var_flush_score",
    "we_var_basic2:reapermc/wicked_expressions/runtime_var_flush_storage"
  ]
}
```

### we_var_basic2

`@function we_var_basic2:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_basic2:reapermc/wicked_expressions/runtime_var_flush_score`

```mcfunction
scoreboard players reset $we_var_basic2#int$0 reapermc.wicked_expressions
scoreboard players reset $we_var_basic2#int$1 reapermc.wicked_expressions
scoreboard players reset $we_var_basic2#int$2 reapermc.wicked_expressions
```

`@function we_var_basic2:reapermc/wicked_expressions/runtime_var_flush_storage`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_basic2.data.long set value [0L]
data modify storage reapermc:wicked_expressions we_var_basic2.data.float set value [0.0f, 0.0f]
data modify storage reapermc:wicked_expressions we_var_basic2.data.double set value [0.0d]
data modify storage reapermc:wicked_expressions we_var_basic2.data.string set value [""]
data modify storage reapermc:wicked_expressions we_var_basic2.data.list set value [[]]
```
