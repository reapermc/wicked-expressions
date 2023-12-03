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

`@function demo:bool`

```mcfunction
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success score $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:byte`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte[0][0] byte 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:short`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short[0][0] short 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:qint`

```mcfunction
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success score $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:int`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int[0][0] int 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:long`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long[0][0] long 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:float`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float[0][0] float 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

`@function demo:double`

```mcfunction
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 unless score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches 42..
execute store success storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double[0][0] double 1 if score $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions matches ..42
```

### we_comparison_assignment_score

`@function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_comparison_assignment_score#bool$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.short append value [0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s, 0s]
scoreboard players reset $we_comparison_assignment_score#qint$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.int append value [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.long append value [0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double
data modify storage reapermc:wicked_expressions data.we_comparison_assignment_score.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
scoreboard players reset $we_comparison_assignment_score#qint$1 reapermc.wicked_expressions
```

`@function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_assignment_score:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_0
function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_1
function we_comparison_assignment_score:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_assignment_score:reapermc/wicked_expressions/loader"
  ]
}
```
