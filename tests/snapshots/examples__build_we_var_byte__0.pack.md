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
execute store result storage reapermc:wicked_expressions we_var_byte.data.byte[0] byte 1 run scoreboard players get $test test
data modify storage reapermc:wicked_expressions temp set from storage reapermc:wicked_expressions we_var_byte.data.byte[0]
execute store success score $is_not_equal reapermc.wicked_expressions store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $test test
execute if score $is_not_equal reapermc.wicked_expressions matches 0 run say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_byte:reapermc/wicked_expressions/scoreboard_setup",
    "we_var_byte:reapermc/wicked_expressions/runtime_var_flush_storage"
  ]
}
```

### we_var_byte

`@function we_var_byte:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy "reapermc.wicked_expressions"
scoreboard objectives add test dummy "test"
```

`@function we_var_byte:reapermc/wicked_expressions/runtime_var_flush_storage`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_byte.data.byte set value [0b]
```
