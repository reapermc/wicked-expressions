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
data modify storage reapermc:wicked_expressions data.we_comparison_float.var.float[0][0] set value 3.14159f
data modify storage reapermc:wicked_expressions data.we_comparison_float.var.double[0][0] set value 10.3d
 
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_float.var.float[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 3.14159f
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_float#bool$0 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute if score $we_comparison_float#bool$0 reapermc.wicked_expressions matches 0 run tellraw @a "that's pi!"
execute unless score $we_comparison_float#bool$0 reapermc.wicked_expressions matches 0 run tellraw @a "not pi!"
 
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_float.var.double[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 3.3d
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_float#bool$1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute unless score $we_comparison_float#bool$1 reapermc.wicked_expressions matches 0 run tellraw @a "a"
execute if score $we_comparison_float#bool$1 reapermc.wicked_expressions matches 0 run function demo:main/we_comp_autonest/1f
```

`@function demo:main/we_comp_autonest/1f`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions data.we_comparison_float.var.double[0][0]
data modify storage reapermc:wicked_expressions binop.register.b set value 10.3d
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $we_comparison_float#bool$2 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute unless score $we_comparison_float#bool$2 reapermc.wicked_expressions matches 0 run tellraw @a "b"
execute if score $we_comparison_float#bool$2 reapermc.wicked_expressions matches 0 run tellraw @a "c"
```

### we_comparison_float

`@function we_comparison_float:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_float:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_comparison_float#bool$2 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_float.var.float
data modify storage reapermc:wicked_expressions data.we_comparison_float.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
data remove storage reapermc:wicked_expressions data.we_comparison_float.var.double
data modify storage reapermc:wicked_expressions data.we_comparison_float.var.double append value [0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d]
scoreboard players reset $we_comparison_float#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_comparison_float#bool$1 reapermc.wicked_expressions
```

`@function we_comparison_float:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_float:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_float:reapermc/wicked_expressions/loader/prio_0
function we_comparison_float:reapermc/wicked_expressions/loader/prio_1
function we_comparison_float:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_float:reapermc/wicked_expressions/loader"
  ]
}
```
