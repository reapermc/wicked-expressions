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
execute if score $x foo = $x foo run tellraw @s "x value exists"
execute unless score $x foo = $x foo run tellraw @s "x value does not exist"
execute if data storage bar data.y run tellraw @s "y value exists"
execute unless data storage bar data.y run tellraw @s "y value does not exist"
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "docs_test:reapermc/wicked_expressions/scoreboard_setup"
  ]
}
```

### docs_test

`@function docs_test:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add foo dummy
```
