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
data modify storage reapermc:wicked_expressions binop.register.b set from storage demo:foo y
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $binop.we_comparison_data_oper_data.0 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 0
execute if score $binop.we_comparison_data_oper_data.0 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_data_oper_data.0 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:ne`

```mcfunction
data modify storage reapermc:wicked_expressions binop.register.a set from storage demo:foo x
data modify storage reapermc:wicked_expressions binop.register.b set from storage demo:foo y
execute store result score $binop.register.c reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions binop.register.a set from storage reapermc:wicked_expressions binop.register.b
execute store success score $binop.we_comparison_data_oper_data.1 reapermc.wicked_expressions if score $binop.register.c reapermc.wicked_expressions matches 1
execute if score $binop.we_comparison_data_oper_data.1 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_data_oper_data.1 reapermc.wicked_expressions matches 0 run say no :<
```

### we_comparison_data_oper_data

`@function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_data_oper_data:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_0
function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_1
function we_comparison_data_oper_data:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_data_oper_data:reapermc/wicked_expressions/loader"
  ]
}
```
