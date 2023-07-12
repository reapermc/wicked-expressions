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
data modify storage reapermc:wicked_expressions we_var_short.data.short[0][0] set value 10s
data modify storage test:test test set from storage reapermc:wicked_expressions we_var_short.data.short[0][0]
execute store result storage test:test test int 1 run scoreboard players get $test test
execute store result score $test test run data get storage test:test test 1
data modify storage reapermc:wicked_expressions we_var_short.data.byte[0][0] set from storage reapermc:wicked_expressions we_var_short.data.short[0][0]
data modify storage reapermc:wicked_expressions we_var_short.data.short[0][0] set from storage reapermc:wicked_expressions we_var_short.data.byte[0][0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_short:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_short

`@function we_var_short:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_short:reapermc/wicked_expressions/safe_load/flush_variable/byte
function we_var_short:reapermc/wicked_expressions/safe_load/flush_variable/short
function we_var_short:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_var_short:reapermc/wicked_expressions/safe_load/flush_variable/byte`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_short.data.byte
data modify storage reapermc:wicked_expressions we_var_short.data.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
```

`@function we_var_short:reapermc/wicked_expressions/safe_load/flush_variable/short`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_short.data.short
data modify storage reapermc:wicked_expressions we_var_short.data.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
```

`@function we_var_short:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add test dummy
```
