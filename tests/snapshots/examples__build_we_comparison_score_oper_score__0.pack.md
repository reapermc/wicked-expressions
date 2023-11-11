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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:eq`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.0 reapermc.wicked_expressions if score .x foo = .y foo
execute if score $binop.we_comparison_score_oper_score.0 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.0 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:ne`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.1 reapermc.wicked_expressions unless score .x foo = .y foo
execute if score $binop.we_comparison_score_oper_score.1 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.1 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:lt`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.2 reapermc.wicked_expressions if score .x foo < .y foo
execute if score $binop.we_comparison_score_oper_score.2 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.2 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:gt`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.3 reapermc.wicked_expressions if score .x foo > .y foo
execute if score $binop.we_comparison_score_oper_score.3 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.3 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:le`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.4 reapermc.wicked_expressions if score .x foo <= .y foo
execute if score $binop.we_comparison_score_oper_score.4 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.4 reapermc.wicked_expressions matches 0 run say no :<
```

`@function demo:ge`

```mcfunction
execute store success score $binop.we_comparison_score_oper_score.5 reapermc.wicked_expressions if score .x foo >= .y foo
execute if score $binop.we_comparison_score_oper_score.5 reapermc.wicked_expressions matches 1 run say yes :3
execute if score $binop.we_comparison_score_oper_score.5 reapermc.wicked_expressions matches 0 run say no :<
```

### we_comparison_score_oper_score

`@function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add foo dummy
```

`@function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_score_oper_score:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_0
function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_1
function we_comparison_score_oper_score:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_score_oper_score:reapermc/wicked_expressions/loader"
  ]
}
```