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

`@function(strip_final_newline) demo:main`

```mcfunction

```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_autonest2:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_comparison_autonest2

`@function we_comparison_autonest2:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_comparison_autonest2:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_comparison_autonest2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```
