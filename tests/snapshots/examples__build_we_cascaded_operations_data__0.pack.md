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
data modify storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]._is_static set value 0b
data modify storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]._index set value 0b
```

`@function demo:to_score`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions = $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions = $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions <= $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions < $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions < $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success score $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions <= $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
```

`@function demo:to_data`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions = $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions = $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions <= $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions < $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions unless score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 unless score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions < $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 11
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute store success storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte[0][0] byte 1 if score $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions <= $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
```

### we_cascaded_operations_data

`@function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_cascaded_operations_data#bool$1 reapermc.wicked_expressions
scoreboard players reset $we_cascaded_operations_data#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte
data modify storage reapermc:wicked_expressions data.we_cascaded_operations_data.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
```

`@function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_cascaded_operations_data:reapermc/wicked_expressions/loader`

```mcfunction
function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_0
function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_1
function we_cascaded_operations_data:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_cascaded_operations_data:reapermc/wicked_expressions/loader"
  ]
}
```
