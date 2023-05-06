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

`@function test:reapermc/wicked_expressions/safe_load`

```mcfunction
function test:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function test:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add foo dummy
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:reapermc/wicked_expressions/safe_load"
  ]
}
```
