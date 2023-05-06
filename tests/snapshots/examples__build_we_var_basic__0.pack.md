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

`@function(strip_final_newline) demo:main`

```mcfunction

```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_basic

`@function we_var_basic:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_basic:reapermc/wicked_expressions/safe_load/flush_variable/int
function we_var_basic:reapermc/wicked_expressions/safe_load/flush_variable/double
```

`@function we_var_basic:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add foo dummy
```

`@function we_var_basic:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $we_var_basic#int$0 reapermc.wicked_expressions
scoreboard players reset $we_var_basic#int$1 reapermc.wicked_expressions
scoreboard players reset $we_var_basic#int$2 reapermc.wicked_expressions
scoreboard players reset $we_var_basic#int$2 reapermc.wicked_expressions
```

`@function we_var_basic:reapermc/wicked_expressions/safe_load/flush_variable/double`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_basic.data.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
```
