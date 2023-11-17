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
execute store success score $binop.wicked_expressions_commands.0 reapermc.wicked_expressions if score $test obj.temp matches 123
execute unless score $binop.wicked_expressions_commands.0 reapermc.wicked_expressions matches 0 run say hello
execute if score $binop.wicked_expressions_commands.0 reapermc.wicked_expressions matches 0 run function test:main/nested_execute_0
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add obj.temp dummy
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

`@function test:main/nested_execute_0`

```mcfunction
execute store success score $binop.wicked_expressions_commands.1 reapermc.wicked_expressions if score $test1 obj.temp = $test2 obj.temp
execute unless score $binop.wicked_expressions_commands.1 reapermc.wicked_expressions matches 0 run say hello2
```

`@function test:reapermc/wicked_expressions/loader`

```mcfunction
function test:reapermc/wicked_expressions/loader/prio_0
function test:reapermc/wicked_expressions/loader/prio_1
function test:reapermc/wicked_expressions/loader/prio_2
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
    "test:reapermc/wicked_expressions/loader"
  ]
}
```
