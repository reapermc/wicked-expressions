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
execute store success score $binop.we_exists.0 reapermc.wicked_expressions if score $foo foo = $foo foo
execute unless score $binop.we_exists.0 reapermc.wicked_expressions matches 0 run say foo exists
execute if score $binop.we_exists.0 reapermc.wicked_expressions matches 0 run say foo is unassigned
execute store success score $binop.we_exists.1 reapermc.wicked_expressions if data storage bar bar
execute unless score $binop.we_exists.1 reapermc.wicked_expressions matches 0 run say bar exists
execute if score $binop.we_exists.1 reapermc.wicked_expressions matches 0 run say bar is unassigned
```

### we_exists

`@function we_exists:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add foo dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_exists:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_exists:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_exists:reapermc/wicked_expressions/loader`

```mcfunction
function we_exists:reapermc/wicked_expressions/loader/prio_0
function we_exists:reapermc/wicked_expressions/loader/prio_1
function we_exists:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_exists:reapermc/wicked_expressions/loader"
  ]
}
```
