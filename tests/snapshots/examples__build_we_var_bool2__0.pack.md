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
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_bool2#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 1 run say hellooooooooo
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_bool2#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 0 run say no
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_bool2#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 1 run say hallloooooooooooooooooooo
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_bool2:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_bool2

`@function we_var_bool2:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_bool2:reapermc/wicked_expressions/safe_load/flush_variable/bool
function we_var_bool2:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_var_bool2:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $we_var_bool2#bool$0 reapermc.wicked_expressions
```

`@function we_var_bool2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```
