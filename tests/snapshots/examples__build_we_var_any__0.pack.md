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
data modify storage reapermc:wicked_expressions we_var_any.data.any[0][0] set value {foo: "bar"}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_any:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_any

`@function we_var_any:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_any:reapermc/wicked_expressions/safe_load/flush_variable/any
```

`@function we_var_any:reapermc/wicked_expressions/safe_load/flush_variable/any`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_any.data.any
data modify storage reapermc:wicked_expressions we_var_any.data.any append value [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]
```
