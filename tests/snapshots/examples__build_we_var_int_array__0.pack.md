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
data modify storage reapermc:wicked_expressions we_var_int_array.data.int_array[0][0] set from entity @s UUID
tellraw @a {"nbt": "we_var_int_array.data.int_array[0][0]", "storage": "reapermc:wicked_expressions"}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_int_array:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_int_array

`@function we_var_int_array:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_int_array:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_int_array:reapermc/wicked_expressions/safe_load/flush_variable/int_array
```

`@function we_var_int_array:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_int_array:reapermc/wicked_expressions/safe_load/flush_variable/int_array`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_int_array.data.int_array
data modify storage reapermc:wicked_expressions we_var_int_array.data.int_array append value [[I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ], [I; ]]
```
