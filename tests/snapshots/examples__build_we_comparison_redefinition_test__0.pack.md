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
scoreboard players set $we_comparison_redefinition_test#qint$0 reapermc.wicked_expressions 42
data modify storage reapermc:wicked_expressions data.we_comparison_redefinition_test.var.byte[0][0] set value 8b
function demo:static_path
function demo:static_path
```

`@function demo:static_path/we_comp_autonest/1t`

```mcfunction
say foo
say foo2
```

`@function demo:static_path/we_comp_autonest/1f`

```mcfunction
say bar
say bar2
```

`@function demo:static_path/we_comp_autonest/2t`

```mcfunction
say foo
say foo2
```

`@function demo:static_path/we_comp_autonest/2f`

```mcfunction
say bar
say bar2
```

`@function demo:static_path/we_comp_autonest/3t`

```mcfunction
say foo
say foo2
```

`@function demo:static_path`

```mcfunction
scoreboard players set $we_comparison_redefinition_test#bool$0 reapermc.wicked_expressions 3
execute store success score $we_comparison_redefinition_test#bool$1 reapermc.wicked_expressions if score $we_comparison_redefinition_test#qint$0 reapermc.wicked_expressions matches 42
execute unless score $we_comparison_redefinition_test#bool$1 reapermc.wicked_expressions matches 0 run function demo:static_path/we_comp_autonest/1t
execute if score $we_comparison_redefinition_test#bool$1 reapermc.wicked_expressions matches 0 run function demo:static_path/we_comp_autonest/1f
execute store success score $we_comparison_redefinition_test#bool$2 reapermc.wicked_expressions if score $we_comparison_redefinition_test#qint$0 reapermc.wicked_expressions matches 42
execute unless score $we_comparison_redefinition_test#bool$2 reapermc.wicked_expressions matches 0 run function demo:static_path/we_comp_autonest/2t
execute if score $we_comparison_redefinition_test#bool$2 reapermc.wicked_expressions matches 0 run function demo:static_path/we_comp_autonest/2f
execute store success score $we_comparison_redefinition_test#bool$3 reapermc.wicked_expressions if data storage reapermc:wicked_expressions data.we_comparison_redefinition_test.var.byte[0][0]
execute unless score $we_comparison_redefinition_test#bool$3 reapermc.wicked_expressions matches 0 run function demo:static_path/we_comp_autonest/3t
execute if score $we_comparison_redefinition_test#bool$3 reapermc.wicked_expressions matches 0 run say bar
```

### we_comparison_redefinition_test

`@function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_comparison_redefinition_test#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_comparison_redefinition_test#bool$1 reapermc.wicked_expressions
scoreboard players reset $we_comparison_redefinition_test#bool$2 reapermc.wicked_expressions
scoreboard players reset $we_comparison_redefinition_test#bool$3 reapermc.wicked_expressions
scoreboard players reset $we_comparison_redefinition_test#qint$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.we_comparison_redefinition_test.var.byte
data modify storage reapermc:wicked_expressions data.we_comparison_redefinition_test.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
```

`@function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_comparison_redefinition_test:reapermc/wicked_expressions/loader`

```mcfunction
function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_0
function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_1
function we_comparison_redefinition_test:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_comparison_redefinition_test:reapermc/wicked_expressions/loader"
  ]
}
```
