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
execute store result storage bolt.expr:temp 2384k242hd495_0 byte 1 run scoreboard players get $a obj
data modify storage demo value set from storage bolt.expr:temp 2384k242hd495_0
execute store result storage bolt.expr:temp 2384k242hd495_1 double 0.01 run scoreboard players get $x obj
data modify storage demo pos[0] set from storage bolt.expr:temp 2384k242hd495_1
execute store result storage bolt.expr:temp 2384k242hd495_2 int 1 run scoreboard players get $n obj
data modify storage demo n set from storage bolt.expr:temp 2384k242hd495_2
execute store result storage bolt.expr:temp 2384k242hd495_3 float 1 run data get storage bolt.expr:temp 2384k242hd495_2 1
data modify storage demo m set from storage bolt.expr:temp 2384k242hd495_3
execute store result score $i0 bolt.expr.temp run data get storage demo x 100
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage bolt.expr:temp 2384k242hd495_4 double 0.01 run scoreboard players get $i0 bolt.expr.temp
data modify storage demo x set from storage bolt.expr:temp 2384k242hd495_4
execute store result score $i0 bolt.expr.temp run data get storage demo num 100
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage bolt.expr:temp 2384k242hd495_5 double 1 run scoreboard players get $i0 bolt.expr.temp
execute store result storage demo num double 0.01 run data get storage bolt.expr:temp 2384k242hd495_5 1
execute store result storage bolt.expr:temp 2384k242hd495_6 short 1 run scoreboard players get $val obj
execute store result storage demo a int 100 run data get storage bolt.expr:temp 2384k242hd495_6 1
execute store result storage demo a double 0.1 run data get storage bolt.expr:temp 2384k242hd495_6 1
scoreboard players operation $i0 bolt.expr.temp = $a obj
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage demo a int 1 run scoreboard players get $i0 bolt.expr.temp
scoreboard players operation $i0 bolt.expr.temp = $b obj
scoreboard players add $i0 bolt.expr.temp 2
execute store result storage bolt.expr:temp 2384k242hd495_7 double 1 run scoreboard players get $i0 bolt.expr.temp
execute store result storage demo a double 0.1 run data get storage bolt.expr:temp 2384k242hd495_7 1
say nicer
execute store result storage bolt.expr:temp 2384k242hd495_8 double 0.01 run scoreboard players get $foo obj
data modify storage demo foo set from storage bolt.expr:temp 2384k242hd495_8
data modify storage demo bar set from storage demo foo
execute store result storage bolt.expr:temp 2384k242hd495_9 double 1 run data get storage demo foo 1
data modify storage demo bar set from storage bolt.expr:temp 2384k242hd495_9
say temp.c will be scaled and converted to a double (preserve precision)
execute store result storage demo bar double 0.1 run data get storage demo c 1
say force temp.c to be truncated
execute store result storage bolt.expr:temp 2384k242hd495_10 int 0.1 run data get storage demo c 1
data modify storage demo bar set from storage bolt.expr:temp 2384k242hd495_10
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add obj dummy
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
