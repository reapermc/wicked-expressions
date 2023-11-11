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

### demo

`@function demo:main`

```mcfunction
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.int[0][1] set from storage reapermc:wicked_expressions data.we_var_type_cast.var.double[0][0]
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.float[0][1] set value 10.3f
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.int[0][2] set from storage reapermc:wicked_expressions data.we_var_type_cast.var.float[0][1]
execute store result score $i0 bolt.expr.temp run data get storage reapermc:wicked_expressions data.we_var_type_cast.var.int[0][1] 1
execute store result score $i1 bolt.expr.temp run data get storage reapermc:wicked_expressions data.we_var_type_cast.var.int[0][2] 1
scoreboard players operation $i0 bolt.expr.temp += $i1 bolt.expr.temp
scoreboard players operation $i0 bolt.expr.temp *= $1000 bolt.expr.const
execute store result storage reapermc:wicked_expressions data.we_var_type_cast.var.float[0][2] float 1 run scoreboard players get $i0 bolt.expr.temp
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.float[0][0] set from storage reapermc:wicked_expressions data.we_var_type_cast.var.float[0][2]
```

`@function demo:test`

```mcfunction
scoreboard players set $we_var_type_cast#bool$1 reapermc.wicked_expressions 1
tellraw @a "yes"
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_var_type_cast.var.int[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $binop.we_var_type_cast.0 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute if score $binop.we_var_type_cast.0 reapermc.wicked_expressions matches 1 run say hello :3
execute if score $binop.we_var_type_cast.0 reapermc.wicked_expressions matches 0 run say not hello ._.
```

### we_var_type_cast

`@function we_var_type_cast:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_type_cast:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_var_type_cast#bool$1 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_var_type_cast.var.byte
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_var_type_cast.var.double
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
data remove storage reapermc:wicked_expressions data.we_var_type_cast.var.float
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_var_type_cast.var.int
data modify storage reapermc:wicked_expressions data.we_var_type_cast.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
scoreboard players reset $we_var_type_cast#bool$0 reapermc.wicked_expressions
```

`@function we_var_type_cast:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_type_cast:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_type_cast:reapermc/wicked_expressions/loader/prio_0
function we_var_type_cast:reapermc/wicked_expressions/loader/prio_1
function we_var_type_cast:reapermc/wicked_expressions/loader/prio_2
```

`@function we_var_type_cast:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $1000 bolt.expr.const 1000
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_type_cast:init_expressions",
    "we_var_type_cast:reapermc/wicked_expressions/loader"
  ]
}
```
