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

`@function demo:eq`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$0 reapermc.wicked_expressions if score $binop.register.b reapermc.wicked_expressions = .y foo
execute unless score $we_comparison_data_oper_score#bool$0 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$0 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:ne`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$1 reapermc.wicked_expressions unless score $binop.register.b reapermc.wicked_expressions = .y foo
execute unless score $we_comparison_data_oper_score#bool$1 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$1 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:lt`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$2 reapermc.wicked_expressions if score $binop.register.b reapermc.wicked_expressions < .y foo
execute unless score $we_comparison_data_oper_score#bool$2 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$2 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:gt`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$3 reapermc.wicked_expressions if score $binop.register.b reapermc.wicked_expressions > .y foo
execute unless score $we_comparison_data_oper_score#bool$3 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$3 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:le`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$4 reapermc.wicked_expressions if score $binop.register.b reapermc.wicked_expressions <= .y foo
execute unless score $we_comparison_data_oper_score#bool$4 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$4 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:ge`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
execute store result score $binop.register.b reapermc.wicked_expressions run data get storage reapermc:wicked_expressions binop.register.a
execute unless data storage reapermc:wicked_expressions binop.register.a run scoreboard players reset $binop.register.b reapermc.wicked_expressions
execute store success score $we_comparison_data_oper_score#bool$5 reapermc.wicked_expressions if score $binop.register.b reapermc.wicked_expressions >= .y foo
execute unless score $we_comparison_data_oper_score#bool$5 reapermc.wicked_expressions matches 0 run say yes :3
execute if score $we_comparison_data_oper_score#bool$5 reapermc.wicked_expressions matches 0 run say no :<
```

### we_comparison_data_oper_score

`@function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add foo dummy
```

`@function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_comparison_data_oper_score#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_comparison_data_oper_score#bool$1 reapermc.wicked_expressions
scoreboard players reset $we_comparison_data_oper_score#bool$2 reapermc.wicked_expressions
scoreboard players reset $we_comparison_data_oper_score#bool$3 reapermc.wicked_expressions
scoreboard players reset $we_comparison_data_oper_score#bool$4 reapermc.wicked_expressions
scoreboard players reset $we_comparison_data_oper_score#bool$5 reapermc.wicked_expressions
```

`@function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_data_oper_score:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_0
function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_1
function we_comparison_data_oper_score:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_data_oper_score:reapermc/wicked_expressions/loader"
  ]
}
```
