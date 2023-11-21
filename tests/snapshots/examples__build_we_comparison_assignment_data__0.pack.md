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

### demo

`@function demo:main`

```mcfunction
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte[0][0]._index set value 0b
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short[0][0]._is_static set value 0s
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short[0][0]._index set value 0s
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][0]._index set value 0
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long[0][0]._index set value 0
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float[0][0]._is_static set value 0.0f
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float[0][0]._index set value 0.0f
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double[0][0]._is_static set value 0.0d
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double[0][0]._index set value 0.0d
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]._index set value 1
```

`@function demo:bool`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_assignment_data#bool$0 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_assignment_data#bool$0 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:byte`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte[0][0] byte 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte[0][0] byte 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:short`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short[0][0] short 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short[0][0] short 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:qint`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_assignment_data#qint$0 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_assignment_data#qint$0 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:int`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][0] int 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][0] int 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:long`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long[0][0] long 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long[0][0] long 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:float`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float[0][0] float 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float[0][0] float 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

`@function demo:double`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double[0][0] double 1 if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int[0][1]
data modify storage reapermc:wicked_expressions binop.register.b set value 42
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double[0][0] double 1 unless score $binop.register.c reapermc.wicked_expressions matches 0
```

### we_comparison_assignment_data

`@function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_comparison_assignment_data#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
scoreboard players reset $we_comparison_assignment_data#qint$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_data.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
```

`@function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_assignment_data:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_0
function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_1
function we_comparison_assignment_data:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_assignment_data:reapermc/wicked_expressions/loader"
  ]
}
```
