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
data modify storage wicked_expressions:private we_var_basic1.data.float[0] set value 46.0f
data modify storage wicked_expressions:private we_var_basic1.data.float[0] set value 1.2353456f
data modify storage wicked_expressions:private we_var_basic1.data.double[0] set value 5.4357543d
data modify storage wicked_expressions:private we_var_basic1.data.double[0] set value 3.0d
data modify storage wicked_expressions:private we_var_basic1.data.double[0] set from storage wicked_expressions:private we_var_basic1.data.float[0]
data modify storage wicked_expressions:private we_var_basic1.data.float[0] set from storage wicked_expressions:private we_var_basic1.data.double[0]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic1:wicked_expressions/scoreboard/setup",
    "we_var_basic1:wicked_expressions/flush_variables"
  ]
}
```

### we_var_basic1

`@function we_var_basic1:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
```

`@function we_var_basic1:wicked_expressions/flush_variables`

```mcfunction
scoreboard players reset $we_var_basic1#bool$0 wicked_expressions
scoreboard players reset $we_var_basic1#bool$1 wicked_expressions
data modify storage wicked_expressions:private we_var_basic1.data.byte set value [0b]
scoreboard players reset $we_var_basic1#int$0 wicked_expressions
data modify storage wicked_expressions:private we_var_basic1.data.float set value [0.0f]
data modify storage wicked_expressions:private we_var_basic1.data.double set value [0.0d]
```
