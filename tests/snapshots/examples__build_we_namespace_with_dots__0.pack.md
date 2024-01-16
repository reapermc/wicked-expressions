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

### my.namespace

`@function my.namespace:main`

```mcfunction
data modify storage reapermc:wicked_expressions data."my.namespace".var.float[0][0] set value 1.2f
data modify storage reapermc:wicked_expressions data."my.namespace".var.float[0][0] set value 10.0f
```

`@function my.namespace:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function my.namespace:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data."my.namespace".var.float
data modify storage reapermc:wicked_expressions data."my.namespace".var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function my.namespace:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function my.namespace:reapermc/wicked_expressions/loader`

```mcfunction
function my.namespace:reapermc/wicked_expressions/loader/prio_0
function my.namespace:reapermc/wicked_expressions/loader/prio_1
function my.namespace:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "my.namespace:reapermc/wicked_expressions/loader"
  ]
}
```
