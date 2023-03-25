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
execute store result storage wicked_expressions:private we_var_byte.data.byte[0] byte 1 run scoreboard players get $test test
data modify storage wicked_expressions:private temp set from storage wicked_expressions:private we_var_byte.data.byte[0]
execute store success score $is_not_equal wicked_expressions store result storage wicked_expressions:private temp int 1 run scoreboard players get $test test
execute if score $is_not_equal wicked_expressions matches 0 run say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_byte:wicked_expressions/scoreboard/setup"
  ]
}
```

### we_var_byte

`@function we_var_byte:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add test dummy {"text": "test", "color": "aqua"}
```

`@function we_var_byte:wicked_expressions/flush_variables`

```mcfunction
data modify storage wicked_expressions:private we_var_byte.data.byte set value [0b]
```
