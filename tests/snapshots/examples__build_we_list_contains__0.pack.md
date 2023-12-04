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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:literals`

```mcfunction
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1][] set value {a: "Hey"}
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1][] set value 42
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1][] set value 42
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1][] set value 42
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
```

`@function demo:data`

```mcfunction
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.compound[0][0]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.byte[0][0]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.int[0][0]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.long[0][0]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
```

`@function demo:score`

```mcfunction
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
execute store result storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1] int 1 run scoreboard players get $we_list_contains#qint$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.list[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.list[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
execute store result storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1] int 1 run scoreboard players get $we_list_contains#qint$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
execute store result storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1] int 1 run scoreboard players get $we_list_contains#qint$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
execute store result score $we_list_contains#qint$1 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
execute store result storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1] int 1 run scoreboard players get $we_list_contains#qint$0 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1] set from storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][0]
execute store result score $we_list_contains#qint$2 reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array[0][1][] set from storage reapermc:wicked_expressions data.we_list_contains.var.int[0][1]
execute store success score $we_list_contains#bool$0 reapermc.wicked_expressions unless score $we_list_contains#qint$1 reapermc.wicked_expressions = $we_list_contains#qint$2 reapermc.wicked_expressions
```

### we_list_contains

`@function we_list_contains:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_list_contains:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_list_contains#qint$1 reapermc.wicked_expressions
scoreboard players reset $we_list_contains#qint$2 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_list_contains.var.list
data modify storage reapermc:wicked_expressions data.we_list_contains.var.list append value [[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.byte_array
data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte_array append value [[B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ], [B; ]]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.int_array
data modify storage reapermc:wicked_expressions data.we_list_contains.var.int_array append value [[I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ]]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.long_array
data modify storage reapermc:wicked_expressions data.we_list_contains.var.long_array append value [[L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ], [L; ]]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.compound
data modify storage reapermc:wicked_expressions data.we_list_contains.var.compound append value [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.int
data modify storage reapermc:wicked_expressions data.we_list_contains.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.byte
data modify storage reapermc:wicked_expressions data.we_list_contains.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_list_contains.var.long
data modify storage reapermc:wicked_expressions data.we_list_contains.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
scoreboard players reset $we_list_contains#qint$0 reapermc.wicked_expressions
scoreboard players reset $we_list_contains#bool$0 reapermc.wicked_expressions
```

`@function we_list_contains:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_list_contains:reapermc/wicked_expressions/loader`

```mcfunction
function we_list_contains:reapermc/wicked_expressions/loader/prio_0
function we_list_contains:reapermc/wicked_expressions/loader/prio_1
function we_list_contains:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_list_contains:reapermc/wicked_expressions/loader"
  ]
}
```
