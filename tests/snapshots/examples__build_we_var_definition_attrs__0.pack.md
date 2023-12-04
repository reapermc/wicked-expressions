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

### we_var_definition_attrs

`@function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_var_definition_attrs.var.string
data modify storage reapermc:wicked_expressions data.we_var_definition_attrs.var.string append value ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
scoreboard players reset $we_var_definition_attrs#qint$0 reapermc.wicked_expressions
```

`@function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_var_definition_attrs:reapermc/wicked_expressions/loader`

```mcfunction
function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_0
function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_1
function we_var_definition_attrs:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_definition_attrs:reapermc/wicked_expressions/loader"
  ]
}
```
