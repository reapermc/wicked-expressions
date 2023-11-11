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

### test

`@function test:main`

```mcfunction
scoreboard players set $i0 bolt.expr.temp 10
scoreboard players operation $i0 bolt.expr.temp *= armor smithed.dmg
scoreboard players set $i1 bolt.expr.temp 400
scoreboard players operation $i1 bolt.expr.temp *= dmg smithed.dmg
scoreboard players set $i2 bolt.expr.temp 10
scoreboard players operation $i2 bolt.expr.temp *= toughness smithed.dmg
scoreboard players add $i2 bolt.expr.temp 80
scoreboard players operation $i1 bolt.expr.temp /= $i2 bolt.expr.temp
scoreboard players operation $i0 bolt.expr.temp -= $i1 bolt.expr.temp
scoreboard players set $i3 bolt.expr.temp 10
scoreboard players operation $i3 bolt.expr.temp *= armor smithed.dmg
scoreboard players operation $i3 bolt.expr.temp /= $5 bolt.expr.const
scoreboard players operation $i0 bolt.expr.temp > $i3 bolt.expr.temp
scoreboard players set $i4 bolt.expr.temp 200
scoreboard players operation $i4 bolt.expr.temp < $i0 bolt.expr.temp
scoreboard players set $i5 bolt.expr.temp 250
scoreboard players operation $i5 bolt.expr.temp -= $i4 bolt.expr.temp
scoreboard players operation $i5 bolt.expr.temp /= $25 bolt.expr.const
scoreboard players operation dmg smithed.dmg *= $i5 bolt.expr.temp
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add smithed.dmg dummy
```

`@function test:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function test:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function test:reapermc/wicked_expressions/loader`

```mcfunction
function test:reapermc/wicked_expressions/loader/prio_0
function test:reapermc/wicked_expressions/loader/prio_1
function test:reapermc/wicked_expressions/loader/prio_2
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $25 bolt.expr.const 25
scoreboard players set $25 bolt.expr.const 25
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:init_expressions",
    "test:reapermc/wicked_expressions/loader"
  ]
}
```
