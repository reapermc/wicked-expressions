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
scoreboard objectives add objective_0 dummy {"text": "objective_0", "color": "aqua"}
```

### demo

`@function demo:main`

```mcfunction
scoreboard players operation $score_0 objective_0 = $test objective_0
execute if score $score_0 objective_0 matches 5 run say hello!
execute if score $score_0 objective_0 matches 10 run say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup"
  ]
}
```
