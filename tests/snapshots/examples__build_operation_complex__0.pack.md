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
scoreboard players operation my_var abc.main = @s abc.main
scoreboard players operation my_var abc.main += @e abc.main
scoreboard players operation my_var abc.main *= $5 bolt.expr.const
scoreboard players operation $i1 bolt.expr.temp = @s abc.main
scoreboard players operation $i1 bolt.expr.temp *= $2 bolt.expr.const
scoreboard players operation my_var abc.main += $i1 bolt.expr.temp
```

`@function test:wicked_expressions/init`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add abc.main dummy {"text": "abc.main", "color": "aqua"}
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $5 bolt.expr.const 5
scoreboard players set $2 bolt.expr.const 2
scoreboard players set $2 bolt.expr.const 2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:init_expressions",
    "test:wicked_expressions/init"
  ]
}
```
