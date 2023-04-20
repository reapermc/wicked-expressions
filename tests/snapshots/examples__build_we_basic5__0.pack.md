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
execute if score $score_0 objective_0 = $score_0 objective_0 run say True
execute unless score $score_0 objective_0 = $score_0 objective_0 run say False
execute if data storage test:storage_0 data_0 run say True
execute unless data storage test:storage_0 data_0 run say False
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_basic5:reapermc/wicked_expressions/scoreboard_setup"
  ]
}
```

### we_basic5

`@function we_basic5:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add objective_0 dummy
```
