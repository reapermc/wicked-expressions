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
data modify storage reapermc:wicked_expressions data.we_cast.var.byte[0][0] set value 10b
data modify storage reapermc:wicked_expressions data.we_cast.var.float[0][0] set value 3.14f
execute store result storage bolt.expr:temp 7o9rjbsscog7r_0 byte 1 run data get storage reapermc:wicked_expressions data.we_cast.var.float[0][0] 1
execute store result storage bolt.expr:temp 7o9rjbsscog7r_1 byte 1 run data get storage reapermc:wicked_expressions data.we_cast.var.float[0][0] 1
data modify storage reapermc:wicked_expressions data.we_cast.static_cast.0 set from storage reapermc:wicked_expressions data.we_cast.var.float[0][0]
data modify storage reapermc:wicked_expressions data.we_cast.static_cast.0 set from storage reapermc:wicked_expressions data.we_cast.var.float[0][0]
 
execute store result storage bolt.expr:temp 7o9rjbsscog7r_2 byte 1 run data get storage reapermc:wicked_expressions data.we_cast.var.float[0][0] 1
data modify storage reapermc:wicked_expressions data.we_cast.var.byte[0][0] set from storage bolt.expr:temp 7o9rjbsscog7r_2
execute store result storage bolt.expr:temp 7o9rjbsscog7r_3 byte 1 run data get storage reapermc:wicked_expressions data.we_cast.var.float[0][0] 1
data modify storage reapermc:wicked_expressions data.we_cast.var.byte[0][0] set from storage bolt.expr:temp 7o9rjbsscog7r_3
```

### we_cast

`@function we_cast:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_cast:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
data remove storage reapermc:wicked_expressions data.we_cast.var.byte
data modify storage reapermc:wicked_expressions data.we_cast.var.byte append value [0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b, 0b]
data remove storage reapermc:wicked_expressions data.we_cast.var.float
data modify storage reapermc:wicked_expressions data.we_cast.var.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function we_cast:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_cast:reapermc/wicked_expressions/loader`

```mcfunction
function we_cast:reapermc/wicked_expressions/loader/prio_0
function we_cast:reapermc/wicked_expressions/loader/prio_1
function we_cast:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_cast:reapermc/wicked_expressions/loader"
  ]
}
```
