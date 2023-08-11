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
data modify storage reapermc:wicked_expressions we_var_list.data.list[0][0] set value [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
data modify storage reapermc:wicked_expressions we_var_list.data.list[0][0][0][0] set value 69
scoreboard players set $we_var_list#int$0 reapermc.wicked_expressions 420
execute store result storage reapermc:wicked_expressions we_var_list.data.list[0][0][0][1] int 1 run scoreboard players get $we_var_list#int$0 reapermc.wicked_expressions
tellraw @a {"nbt": "we_var_list.data.list[0][0]", "storage": "reapermc:wicked_expressions"}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_list:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_var_list

`@function we_var_list:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_var_list:reapermc/wicked_expressions/safe_load/scoreboard_setup
function we_var_list:reapermc/wicked_expressions/safe_load/flush_variable/list
function we_var_list:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function we_var_list:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_var_list:reapermc/wicked_expressions/safe_load/flush_variable/list`

```mcfunction
data remove storage reapermc:wicked_expressions we_var_list.data.list
data modify storage reapermc:wicked_expressions we_var_list.data.list append value [[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]
```

`@function we_var_list:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $we_var_list#int$0 reapermc.wicked_expressions
```
