# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 18,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
execute store success score $binop.we_comparison.0 reapermc.wicked_expressions if score $bar foo = $bar foo
execute unless score $binop.we_comparison.0 reapermc.wicked_expressions matches 0 run say 'exists'
execute if score $binop.we_comparison.0 reapermc.wicked_expressions matches 0 run say 'does not exist'
```

### we_comparison

`@function we_comparison:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add foo dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison:reapermc/wicked_expressions/loader/prio_0
function we_comparison:reapermc/wicked_expressions/loader/prio_1
function we_comparison:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison:reapermc/wicked_expressions/loader"
  ]
}
```
