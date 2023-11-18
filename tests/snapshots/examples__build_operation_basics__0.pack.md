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

### test

`@function test:main`

```mcfunction
execute if score #value abc.temp matches 100.. run scoreboard players set #value abc.temp 0
execute if score #value abc.temp matches 100.. run scoreboard players set #value abc.temp 0
execute store result score #value abc.temp run scoreboard players add #foo abc.temp 1
execute store success score $binop.wicked_expressions_basics.0 reapermc.wicked_expressions if score $435asd abc.main matches 123
execute unless score $binop.wicked_expressions_basics.0 reapermc.wicked_expressions matches 0 run say hello
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add abc.main dummy
scoreboard objectives add abc.temp dummy
scoreboard objectives add reapermc.wicked_expressions dummy
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

`@function test:operations`

```mcfunction
scoreboard players operation @s abc.main += @s abc.temp
scoreboard players operation @s abc.main -= @s abc.temp
scoreboard players operation @s abc.main *= @s abc.temp
scoreboard players operation @s abc.main /= @s abc.temp
scoreboard players operation @s abc.main %= @s abc.temp
```

`@function test:constants`

```mcfunction
scoreboard players add @s abc.main 10
scoreboard players remove @s abc.main 20
scoreboard players operation @s abc.main *= $30 bolt.expr.const
scoreboard players operation @s abc.main /= $40 bolt.expr.const
scoreboard players operation @s abc.main %= $50 bolt.expr.const
scoreboard players operation $a abc.main *= $-1 bolt.expr.const
scoreboard players operation $b abc.main /= $-1 bolt.expr.const
scoreboard players operation $c abc.main /= $2 bolt.expr.const
scoreboard players operation $d abc.main /= $10 bolt.expr.const
scoreboard players operation $e abc.main *= $123 bolt.expr.const
scoreboard players operation $e abc.main /= $1000 bolt.expr.const
scoreboard players operation $f abc.main *= $157 bolt.expr.const
scoreboard players operation $f abc.main /= $50 bolt.expr.const
scoreboard players operation $g abc.main *= $12353 bolt.expr.const
scoreboard players operation $g abc.main /= $25000 bolt.expr.const
scoreboard players operation $h abc.main *= $2 bolt.expr.const
scoreboard players operation $i abc.main *= $100 bolt.expr.const
scoreboard players operation $i abc.main /= $33 bolt.expr.const
scoreboard players operation $j abc.main *= $2 bolt.expr.const
scoreboard players operation $j abc.main /= $3 bolt.expr.const
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $30 bolt.expr.const 30
scoreboard players set $30 bolt.expr.const 30
scoreboard players set $40 bolt.expr.const 40
scoreboard players set $40 bolt.expr.const 40
scoreboard players set $50 bolt.expr.const 50
scoreboard players set $50 bolt.expr.const 50
scoreboard players set $-1 bolt.expr.const -1
scoreboard players set $-1 bolt.expr.const -1
scoreboard players set $2 bolt.expr.const 2
scoreboard players set $2 bolt.expr.const 2
scoreboard players set $10 bolt.expr.const 10
scoreboard players set $10 bolt.expr.const 10
scoreboard players set $123 bolt.expr.const 123
scoreboard players set $123 bolt.expr.const 123
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $157 bolt.expr.const 157
scoreboard players set $157 bolt.expr.const 157
scoreboard players set $12353 bolt.expr.const 12353
scoreboard players set $12353 bolt.expr.const 12353
scoreboard players set $25000 bolt.expr.const 25000
scoreboard players set $25000 bolt.expr.const 25000
scoreboard players set $100 bolt.expr.const 100
scoreboard players set $100 bolt.expr.const 100
scoreboard players set $33 bolt.expr.const 33
scoreboard players set $33 bolt.expr.const 33
scoreboard players set $3 bolt.expr.const 3
scoreboard players set $3 bolt.expr.const 3
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
