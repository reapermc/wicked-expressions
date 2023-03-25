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
data modify storage example:main b.index[0].named."! 3  - b#2a".a{x: 1}.b[{y: 2}].c[] set value 3
execute store result score $i0 bolt.expr.temp run data get storage example:main value 1
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage example:main value int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get storage example:main a 1
scoreboard players operation $a obj.temp = $value obj.temp
scoreboard players operation $a obj.temp -= $i0 bolt.expr.temp
execute store result storage example:main a int 1 run scoreboard players get $a obj.temp
execute unless data storage example:main {a: 0} run say It's 0!
execute if data storage example:main {a: 0} run say It's not 0...
```

`@function test:wicked_expressions/scoreboard/setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add obj.temp dummy {"text": "obj.temp", "color": "aqua"}
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:init_expressions",
    "test:wicked_expressions/scoreboard/setup"
  ]
}
```
