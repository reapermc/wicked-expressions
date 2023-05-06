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
scoreboard players operation $we_var_bool#bool$0 reapermc.wicked_expressions = $test test
execute store result score $we_var_bool#bool$0 reapermc.wicked_expressions run data get storage test:test test 1
scoreboard players set $we_var_bool#bool$0 reapermc.wicked_expressions 1
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_bool#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 1 run say no
scoreboard players operation $temp reapermc.wicked_expressions = $we_var_bool#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 0 run say yes
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_bool:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_bool

`@function we_var_bool:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_bool:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_bool:reapermc/wicked_expressions/safe_load/flush_variable/bool
```

`@function we_var_bool:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add test dummy
```

`@function we_var_bool:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $we_var_bool#bool$0 reapermc.wicked_expressions
```
