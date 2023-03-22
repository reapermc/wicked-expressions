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

### wicked_expressions

`@function wicked_expressions:scoreboard_setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
```

### demo

`@function demo:main`

```mcfunction
scoreboard players set $we_var_basic2#int$0 wicked_expressions 1245
data modify storage wicked_expressions:private we_var_basic2.data.float[0] set value 123.0f
data modify storage wicked_expressions:private we_var_basic2.data.string[0] set value "hello"
data modify storage wicked_expressions:private we_var_basic2.data.long[0] set value 35L
data modify storage wicked_expressions:private we_var_basic2.data.double[0] set value 0.465d
data modify storage wicked_expressions:private we_var_basic2.data.list[0] append value "hello"
data modify storage wicked_expressions:private we_var_basic2.data.list[0] append value "world"
data modify storage wicked_expressions:private we_var_basic2.data.list[0] append value "!"
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup",
    "we_var_basic2:wicked_expressions/flush_variables"
  ]
}
```

### we_var_basic2

`@function we_var_basic2:wicked_expressions/flush_variables`

```mcfunction
scoreboard players reset $we_var_basic2#int$0 wicked_expressions
scoreboard players reset $we_var_basic2#int$1 wicked_expressions
scoreboard players reset $we_var_basic2#int$2 wicked_expressions
data modify storage wicked_expressions:private we_var_basic2.data.long set value [0L]
data modify storage wicked_expressions:private we_var_basic2.data.float set value [0.0f, 0.0f]
data modify storage wicked_expressions:private we_var_basic2.data.double set value [0.0d]
data modify storage wicked_expressions:private we_var_basic2.data.string set value [""]
data modify storage wicked_expressions:private we_var_basic2.data.list set value [[]]
```
