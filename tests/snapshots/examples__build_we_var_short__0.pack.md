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
data modify storage reapermc:wicked_expressions we_var_short.data.short[0] set value 10s
data modify storage test:test test set from storage reapermc:wicked_expressions we_var_short.data.short[0]
execute store result storage test:test test int 1 run scoreboard players get $test test
execute store result score $test test run data get storage test:test test 1
data modify storage reapermc:wicked_expressions we_var_short.data.byte[0] set from storage reapermc:wicked_expressions we_var_short.data.short[0]
data modify storage reapermc:wicked_expressions we_var_short.data.short[0] set from storage reapermc:wicked_expressions we_var_short.data.byte[0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_short:reapermc/wicked_expressions/scoreboard_setup",
    "we_var_short:reapermc/wicked_expressions/runtime_var_flush_storage"
  ]
}
```

### we_var_short

`@function we_var_short:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy "reapermc.wicked_expressions"
scoreboard objectives add test dummy "test"
```

`@function we_var_short:reapermc/wicked_expressions/runtime_var_flush_storage`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_short.data.byte set value [0b]
data modify storage reapermc:wicked_expressions we_var_short.data.short set value [0s]
```
