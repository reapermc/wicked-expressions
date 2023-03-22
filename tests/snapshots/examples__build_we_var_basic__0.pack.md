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

`@function(strip_final_newline) demo:main`

```mcfunction

```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup",
    "we_var_basic:wicked_expressions/flush_variables"
  ]
}
```

### we_var_basic

`@function we_var_basic:wicked_expressions/flush_variables`

```mcfunction
scoreboard players reset $we_var_basic#int$0 wicked_expressions
scoreboard players reset $we_var_basic#int$1 wicked_expressions
scoreboard players reset $we_var_basic#int$2 wicked_expressions
data modify storage wicked_expressions:private we_var_basic.data.double set value [0.0d, 0.0d, 0.0d]
```
