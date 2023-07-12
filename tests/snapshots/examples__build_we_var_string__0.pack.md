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

`@function demo:main`

```mcfunction
data modify storage reapermc:wicked_expressions we_var_string.data.string[1][5] set value "test"
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_string:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_string

`@function we_var_string:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_string:reapermc/wicked_expressions/safe_load/flush_variable/string
```

`@function we_var_string:reapermc/wicked_expressions/safe_load/flush_variable/string`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_string.data.string
data modify storage reapermc:wicked_expressions we_var_string.data.string append value ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
data modify storage reapermc:wicked_expressions we_var_string.data.string append value ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
```
