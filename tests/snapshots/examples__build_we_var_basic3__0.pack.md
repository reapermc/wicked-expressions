# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:a`

```mcfunction
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_basic3#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 1 run say TRUE
execute if score $temp reapermc.wicked_expressions matches 0 run say FALSE
```

`@function demo:b`

```mcfunction
execute if score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute unless score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say FALSE
```

`@function demo:c`

```mcfunction
execute if score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute unless score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say FALSE
```

`@function demo:inv_a`

```mcfunction
execute if score $temp reapermc.wicked_expressions matches 0 run say TRUE
execute if score $temp reapermc.wicked_expressions matches 1 run say FALSE
```

`@function demo:inv_b`

```mcfunction
execute unless score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute if score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say FALSE
```

`@function demo:inv_c`

```mcfunction
execute unless score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute if score $we_var_basic3#bool$0 reapermc.wicked_expressions matches 1 run say FALSE
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic3:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_basic3

`@function we_var_basic3:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool
```

`@function we_var_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $we_var_basic3#bool$0 reapermc.wicked_expressions
```
