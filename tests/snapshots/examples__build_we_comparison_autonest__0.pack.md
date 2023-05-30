# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
execute as @e run function foo:xyz
```

### foo

`@function foo:a/nested_0`

```mcfunction
say autonesting
say test
```

`@function foo:xyz`

```mcfunction
say hello
say hello2
```

`@function foo:a`

```mcfunction
execute if score $we_comparison_autonest#int$0 reapermc.wicked_expressions matches 69 if score foo tmp matches 10 run function foo:a/nested_0
```

`@function foo:b`

```mcfunction
execute if score $we_comparison_autonest#int$0 reapermc.wicked_expressions matches 69 if score foo tmp matches 10 run say autonesting test
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_autonest:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_comparison_autonest

`@function we_comparison_autonest:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_comparison_autonest:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_comparison_autonest:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function we_comparison_autonest:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_autonest:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $we_comparison_autonest#int$0 reapermc.wicked_expressions
```
