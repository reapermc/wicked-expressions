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
data modify storage wicked_expressions:private we_var_short.data.short[0] set value 10s
data modify storage test:test test set from storage wicked_expressions:private we_var_short.data.short[0]
execute store result storage test:test test int 1 run scoreboard players get $test test
execute store result score $test test run data get storage test:test test 1
data modify storage wicked_expressions:private we_var_short.data.byte[0] set from storage wicked_expressions:private we_var_short.data.short[0]
data modify storage wicked_expressions:private we_var_short.data.short[0] set from storage wicked_expressions:private we_var_short.data.byte[0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_short:wicked_expressions/scoreboard/setup"
  ]
}
```

### we_var_short

`@function we_var_short:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add test dummy {"text": "test", "color": "aqua"}
```

`@function we_var_short:wicked_expressions/flush_variables`

```mcfunction
data modify storage wicked_expressions:private we_var_short.data.byte set value [0b]
data modify storage wicked_expressions:private we_var_short.data.short set value [0s]
```
