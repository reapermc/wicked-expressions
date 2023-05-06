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
    "we_var_byte:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_byte

`@function we_var_byte:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_byte:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_byte:reapermc/wicked_expressions/safe_load/flush_variable/byte
```

`@function we_var_byte:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add test dummy
```

`@function we_var_byte:reapermc/wicked_expressions/safe_load/flush_variable/byte`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_byte.data.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
```
