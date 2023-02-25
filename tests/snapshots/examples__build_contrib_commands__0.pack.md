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
data modify storage example:main items set from entity @s Inventory
data modify block ~ ~ ~ Items append from storage example:main items[]
execute if data storage example:main items[{id: "minecraft:diamond"}] run say There are diamonds!
execute store result score $count obj.temp run data get storage example:main items[{id: "minecraft:diamond"}].Count
execute if score $count obj.temp matches 1 run say "Only one diamond though :("
execute if score @s obj.temp matches 10
execute if score $a obj.temp = $b obj.temp store result score $value obj.temp run scoreboard players add $a obj.temp 1
execute if score $a obj.temp = $b obj.temp
execute if score $a obj.temp = $b obj.temp
execute if score $a obj.temp = $b obj.temp
execute store result score $test obj.temp run scoreboard players add $incr obj.temp 1
execute store result score $test obj.temp run scoreboard players add $incr obj.temp 1
execute store result score $test obj.temp run scoreboard players add $incr obj.temp 1
execute store result score $red obj.temp run scoreboard players add $incr obj.temp 1
execute store result score $green obj.temp run scoreboard players add $incr obj.temp 1
execute store result score $blue obj.temp run scoreboard players add $incr obj.temp 1
execute if score $foo abc.test matches 10
execute if data entity @s {Health: 20.0f}
scoreboard players add $foo obj.temp 10
scoreboard players operation $i0 bolt.expr.temp = $delta obj.temp
scoreboard players add $i0 bolt.expr.temp 10
execute store result score $i1 bolt.expr.temp run data get storage example:main value 1
scoreboard players operation $i0 bolt.expr.temp += $i1 bolt.expr.temp
execute store result storage example:main value int 1 run scoreboard players get $i0 bolt.expr.temp
help
execute if score $test obj.temp matches 123 run say hello
execute unless score $test obj.temp matches 123 if score $test1 obj.temp = $test2 obj.temp run say hello2
```

`@function test:wicked_expressions/create_objectives`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
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
    "test:wicked_expressions/create_objectives"
  ]
}
```
