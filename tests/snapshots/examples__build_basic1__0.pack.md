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

### test

`@function test:main`

```mcfunction
execute as @e[type=zombie] store result entity @s Health float 1 run scoreboard players get $x foo
```

`@function test:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add foo dummy {"text": "foo", "color": "aqua"}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:wicked_expressions/scoreboard/setup"
  ]
}
```
