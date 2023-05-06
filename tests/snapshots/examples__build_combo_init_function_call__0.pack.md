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
scoreboard players operation @s abc.main = #value abc.main
scoreboard players operation @s abc.main *= $2 bolt.expr.const
scoreboard players add @s abc.main 1
scoreboard players operation $i1 bolt.expr.temp = #denom abc.main
scoreboard players operation $i1 bolt.expr.temp *= $5 bolt.expr.const
scoreboard players operation @s abc.main /= $i1 bolt.expr.temp
scoreboard players operation @s abc.main = #value abc.main
scoreboard players operation @s abc.main *= $3 bolt.expr.const
scoreboard players operation @s abc.main *= $4 bolt.expr.const
scoreboard players operation @s abc.main *= $6 bolt.expr.const
scoreboard players operation @s abc.main *= $7 bolt.expr.const
scoreboard players operation @s abc.main *= $8 bolt.expr.const
scoreboard players operation @s abc.main = #value abc.main
scoreboard players operation @s abc.main *= $-5 bolt.expr.const
scoreboard players operation $i0 bolt.expr.temp = #value abc.main
scoreboard players operation $i0 bolt.expr.temp *= $123 bolt.expr.const
scoreboard players add $i0 bolt.expr.temp 10
scoreboard players operation @s abc.main += $i0 bolt.expr.temp
scoreboard players operation $i0 bolt.expr.temp = #value abc.main
scoreboard players operation $i0 bolt.expr.temp *= $0 bolt.expr.const
scoreboard players add $i0 bolt.expr.temp 50
scoreboard players operation @s abc.main %= $i0 bolt.expr.temp
```

`@function test:reapermc/wicked_expressions/safe_load`

```mcfunction
function test:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function test:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add abc.main dummy
```

`@function test:install`

```mcfunction
say Installing pack...
function test:init_expressions
```

`@function test:load`

```mcfunction
execute if score #dependency load.status matches 1.. run function test:install
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $2 bolt.expr.const 2
scoreboard players set $2 bolt.expr.const 2
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $3 bolt.expr.const 3
scoreboard players set $3 bolt.expr.const 3
scoreboard players set $4 bolt.expr.const 4
scoreboard players set $4 bolt.expr.const 4
scoreboard players set $6 bolt.expr.const 6
scoreboard players set $6 bolt.expr.const 6
scoreboard players set $7 bolt.expr.const 7
scoreboard players set $7 bolt.expr.const 7
scoreboard players set $8 bolt.expr.const 8
scoreboard players set $8 bolt.expr.const 8
scoreboard players set $-5 bolt.expr.const -5
scoreboard players set $-5 bolt.expr.const -5
scoreboard players set $123 bolt.expr.const 123
scoreboard players set $123 bolt.expr.const 123
scoreboard players set $0 bolt.expr.const 0
scoreboard players set $0 bolt.expr.const 0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:reapermc/wicked_expressions/safe_load",
    "test:load"
  ]
}
```
