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
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.byte[0][0] byte 1 run scoreboard players get $a obj
data modify storage demo value set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.byte[0][0]
scoreboard players operation $i0 bolt.expr.temp = $x obj
scoreboard players operation $i0 bolt.expr.temp /= $100 bolt.expr.const
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][0] double 1 run scoreboard players get $i0 bolt.expr.temp
data modify storage demo pos[0] set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][0]
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][0] int 1 run scoreboard players get $n obj
data modify storage demo n set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][0]
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][0] set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][0]
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.float[0][0] set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][0]
data modify storage demo m set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.float[0][0]
execute store result score $i0 bolt.expr.temp run data get storage demo x 100
scoreboard players add $i0 bolt.expr.temp 1
scoreboard players operation $i0 bolt.expr.temp /= $100 bolt.expr.const
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][1] double 1 run scoreboard players get $i0 bolt.expr.temp
data modify storage demo x set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][1]
execute store result score $i0 bolt.expr.temp run data get storage demo num 100
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][2] double 1 run scoreboard players get $i0 bolt.expr.temp
execute store result storage demo num double 0.01 run data get storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][2] 1
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.short[0][0] short 1 run scoreboard players get $val obj
execute store result storage demo a int 100 run data get storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.short[0][0] 1
execute store result storage demo a double 0.1 run data get storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.short[0][0] 1
scoreboard players operation $i0 bolt.expr.temp = $a obj
scoreboard players add $i0 bolt.expr.temp 1
execute store result storage demo a int 1 run scoreboard players get $i0 bolt.expr.temp
scoreboard players operation $i0 bolt.expr.temp = $b obj
scoreboard players add $i0 bolt.expr.temp 2
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][3] double 1 run scoreboard players get $i0 bolt.expr.temp
execute store result storage demo a double 0.1 run data get storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][3] 1
say nicer
scoreboard players operation $i0 bolt.expr.temp = $foo obj
scoreboard players operation $i0 bolt.expr.temp /= $100 bolt.expr.const
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][4] double 1 run scoreboard players get $i0 bolt.expr.temp
data modify storage demo foo set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][4]
data modify storage demo bar set from storage demo foo
data modify storage demo foo set from storage demo foo
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][5] set from storage demo foo
data modify storage demo bar set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double[0][5]
say temp.c will be scaled and converted to a double (preserve precision)
execute store result storage demo bar double 0.1 run data get storage demo c 1
say force temp.c to be truncated
execute store result storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][1] double 0.1 run data get storage demo c 1
data modify storage demo bar set from storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int[0][1]
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add obj dummy
```

`@function test:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.byte
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
data remove storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.float
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.short
data modify storage reapermc:wicked_expressions data.wicked_expressions_nbt_type.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
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
scoreboard players set $100 bolt.expr.const 100
scoreboard players set $100 bolt.expr.const 100
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
