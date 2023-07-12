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
execute unless score $we_var_int#int$0 reapermc.wicked_expressions matches 10 run say TRUE
execute if score $we_var_int#int$0 reapermc.wicked_expressions matches 10 run say FALSE
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_int:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_int

`@function we_var_int:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_int:reapermc/wicked_expressions/safe_load/flush_variable/int
function we_var_int:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_var_int:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $we_var_int#int$0 reapermc.wicked_expressions
```

`@function we_var_int:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```
