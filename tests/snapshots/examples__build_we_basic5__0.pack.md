# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 15,
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
    "we_basic5:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_basic5

`@function we_basic5:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_basic5:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_basic5:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add objective_0 dummy
```
