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
scoreboard players operation $we_var_byte#byte$0 wicked_expressions = $test test
execute if score $we_var_byte#byte$0 wicked_expressions = $test test run say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_byte:wicked_expressions/create_objectives",
    "we_var_byte:wicked_expressions/flush_variables"
  ]
}
```

### we_var_byte

`@function we_var_byte:wicked_expressions/create_objectives`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add test dummy {"text": "test", "color": "aqua"}
```

`@function we_var_byte:wicked_expressions/flush_variables`

```mcfunction
scoreboard players reset $we_var_byte#byte$0 wicked_expressions
```
