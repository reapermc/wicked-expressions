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

`@function(strip_final_newline) demo:main`

```mcfunction

```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_basic:wicked_expressions/flush_variables",
    "we_var_basic:wicked_expressions/create_objectives"
  ]
}
```

### we_var_basic

`@function we_var_basic:wicked_expressions/flush_variables`

```mcfunction
scoreboard players reset $we_var_basic#int$0 wicked_expressions
scoreboard players reset $we_var_basic#int$1 wicked_expressions
data modify storage wicked_expressions:private we_var_basic.data.double set value [0.0d, 0.0d, 0.0d]
```

`@function we_var_basic:wicked_expressions/create_objectives`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
```
