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

`@function(strip_final_newline) test:main`

```mcfunction

```

`@function test:wicked_expressions/create_objective`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add abc.main dummy {"text": "abc.main", "color": "aqua"}
```

`@function test:operations`

```mcfunction
execute store result score $i0 bolt.expr.temp run data get entity @s Health 1
scoreboard players operation @s abc.main += $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get entity rx97 SelectedItem.Count 1
scoreboard players operation @s abc.main -= $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get entity TheWii SelectedItem.Damage 1
scoreboard players operation @s abc.main *= $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get block 0 0 0 RecordItem.data 1
scoreboard players operation @s abc.main /= $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get block ~1 ~2 ~3 Items[0] 1
scoreboard players operation @s abc.main %= $i0 bolt.expr.temp
data modify storage demo:prefix/temp foo set from storage demo:prefix/temp bar
execute store result score $i0 bolt.expr.temp run data get storage demo:prefix/temp player 1
execute store result score $i1 bolt.expr.temp run data get entity @s Health 1
scoreboard players operation $i0 bolt.expr.temp += $i1 bolt.expr.temp
execute store result storage demo:prefix/temp player int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get storage demo:prefix/temp player 1
execute store result score $i1 bolt.expr.temp run data get entity rx97 SelectedItem.Count 1
scoreboard players operation $i0 bolt.expr.temp -= $i1 bolt.expr.temp
execute store result storage demo:prefix/temp player int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get storage demo:prefix/temp player 1
execute store result score $i1 bolt.expr.temp run data get entity TheWii SelectedItem.Damage 1
scoreboard players operation $i0 bolt.expr.temp *= $i1 bolt.expr.temp
execute store result storage demo:prefix/temp player int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get storage demo:prefix/temp player 1
execute store result score $i1 bolt.expr.temp run data get block 0 0 0 RecordItem.data 1
scoreboard players operation $i0 bolt.expr.temp /= $i1 bolt.expr.temp
execute store result storage demo:prefix/temp player int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get storage demo:prefix/temp player 1
execute store result score $i1 bolt.expr.temp run data get block ~1 ~2 ~3 Items[0] 1
scoreboard players operation $i0 bolt.expr.temp %= $i1 bolt.expr.temp
execute store result storage demo:prefix/temp player int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get block ~1 ~2 ~3 Items[-1].Count 1
execute store result score $i1 bolt.expr.temp run data get entity @s SelectedItem.Count 1
scoreboard players operation $i0 bolt.expr.temp += $i1 bolt.expr.temp
execute store result block ~1 ~2 ~3 Items[-1].Count int 1 run scoreboard players get $i0 bolt.expr.temp
```

`@function test:literals`

```mcfunction
data modify entity @s Health set value 10
execute store result score $i0 bolt.expr.temp run data get entity @s Health 1
scoreboard players add $i0 bolt.expr.temp 20
execute store result entity @s Health int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $i0 bolt.expr.temp run data get entity rx97 Health 1
scoreboard players remove $i0 bolt.expr.temp 30
execute store result entity rx97 Health int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result block 0 0 0 data.ur_mom int 40 run data get block 0 0 0 data.ur_mom 1
execute store result block ~1 ~2 ~3 Items[0].Count double 0.02 run data get block ~1 ~2 ~3 Items[0].Count 1
execute store result score $i0 bolt.expr.temp run data get entity TheWii Inventory[{Slot: -103b}].tag.data.bolt 1
scoreboard players operation $i0 bolt.expr.temp %= $60 bolt.expr.const
execute store result entity TheWii Inventory[{Slot: -103b}].tag.data.bolt int 1 run scoreboard players get $i0 bolt.expr.temp
data modify entity @s Inventory[].tag.string set value "your mom"
data modify entity @s Inventory[].tag.int set value 10
data modify entity @s Inventory[].tag.float set value 10.0f
data modify entity @s Inventory[].tag.double set value 10.0d
data modify entity @s Inventory[].tag.list set value []
data modify entity @s Inventory[].tag.list set value [1, 2, 3]
data modify entity @s Inventory[].tag.list set value [1, 2, 3, 4, 5, 6]
data modify entity @s Inventory[].tag.list set value [{}, {}, {}]
data modify entity @s Inventory[].tag.list set value [{bar: 2.5f}, {baz: 0b}]
data modify entity @s Inventory[].tag.list set value {}
data modify entity @s Inventory[].tag.list set value {foo: 2, baz: -1s}
```

`@function test:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard players set $60 bolt.expr.const 60
scoreboard players set $60 bolt.expr.const 60
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:init_expressions",
    "test:wicked_expressions/create_objective"
  ]
}
```
