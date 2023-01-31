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

### demo

`@function demo:main`

```mcfunction
scoreboard players set $foo myobjectivename 10
scoreboard players set $wefwef anotherone 124
scoreboard players operation $testplayer anotherone = $foo myobjectivename
scoreboard players operation $testplayer anotherone *= $1000 bolt.expr.const
scoreboard players operation $testplayer anotherone = $testplayer anotherone
scoreboard players set $testplayer anotherone 1234
scoreboard players operation $testplayer anotherone /= $345 bolt.expr.const
execute unless score $testplayer anotherone matches 69 run say true
execute if score $testplayer anotherone matches 69 run say false
execute if score $testplayer anotherone = $testplayer anotherone run say exists
execute unless score $testplayer anotherone = $testplayer anotherone run say doesnt exist
data modify storage test:test somenbtpath set value 1234
execute store result score $i0 bolt.expr.temp run data get storage test:test somenbtpath 1
scoreboard players add $i0 bolt.expr.temp 10
execute store result storage test:test somenbtpath int 1 run scoreboard players get $i0 bolt.expr.temp
execute unless data storage test:test somenbtpath run say doesnt exist
execute if data storage test:test somenbtpath run say exists
data modify storage reapermc:wicked_expressions temp set from storage test:test somenbtpath
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set value 69
execute if score $is_not_equal wicked_expressions matches 0 run say true
execute if score $is_not_equal wicked_expressions matches 1 run say false
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic1:init_expressions",
    "basic1:wicked_expressions/init"
  ]
}
```

### basic1

`@function basic1:wicked_expressions/init`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add myobjectivename dummy {"text": "myobjectivename", "color": "aqua"}
scoreboard objectives add anotherone dummy {"text": "anotherone", "color": "aqua"}
```

`@function basic1:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $345 bolt.expr.const 345
scoreboard players set $345 bolt.expr.const 345
```
