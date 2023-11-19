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

`@function demo:normal_args`

```mcfunction
scoreboard players set $we_copy_args#qint$0 reapermc.wicked_expressions 42
scoreboard players set $we_copy_args#qint$1 reapermc.wicked_expressions 10
# <func run>
scoreboard players operation $we_copy_args#qint$2 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$3 reapermc.wicked_expressions = $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$0 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.0 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.1 set from storage fazz:fazz fazz
# <func run>
scoreboard players operation $we_copy_args#qint$4 reapermc.wicked_expressions = $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$5 reapermc.wicked_expressions = $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$1 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.2 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.3 set from storage fazz:fazz fazz
```

`@function demo:static_args`

```mcfunction
scoreboard players set $we_copy_args#qint$6 reapermc.wicked_expressions 42
scoreboard players set $we_copy_args#qint$7 reapermc.wicked_expressions 10
# <func run>
scoreboard players operation $we_copy_args#qint$8 reapermc.wicked_expressions = $we_copy_args#qint$6 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$9 reapermc.wicked_expressions = $we_copy_args#qint$7 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$2 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.4 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.5 set from storage fazz:fazz fazz
# <func run>
scoreboard players operation $we_copy_args#qint$8 reapermc.wicked_expressions = $we_copy_args#qint$6 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$9 reapermc.wicked_expressions = $we_copy_args#qint$7 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$2 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.4 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.5 set from storage fazz:fazz fazz
```

`@function demo:normal_kwargs`

```mcfunction
scoreboard players set $we_copy_args#qint$10 reapermc.wicked_expressions 42
scoreboard players set $we_copy_args#qint$11 reapermc.wicked_expressions 10
# <func run>
scoreboard players operation $we_copy_args#qint$12 reapermc.wicked_expressions = $we_copy_args#qint$10 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$13 reapermc.wicked_expressions = $we_copy_args#qint$11 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$3 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.6 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.7 set from storage fazz:fazz fazz
# <func run>
scoreboard players operation $we_copy_args#qint$14 reapermc.wicked_expressions = $we_copy_args#qint$10 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$15 reapermc.wicked_expressions = $we_copy_args#qint$11 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$4 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.8 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.9 set from storage fazz:fazz fazz
```

`@function demo:static_kwargs`

```mcfunction
scoreboard players set $we_copy_args#qint$16 reapermc.wicked_expressions 42
scoreboard players set $we_copy_args#qint$17 reapermc.wicked_expressions 10
# <func run>
scoreboard players operation $we_copy_args#qint$18 reapermc.wicked_expressions = $we_copy_args#qint$16 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$19 reapermc.wicked_expressions = $we_copy_args#qint$17 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$5 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.10 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.11 set from storage fazz:fazz fazz
# <func run>
scoreboard players operation $we_copy_args#qint$18 reapermc.wicked_expressions = $we_copy_args#qint$16 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#qint$19 reapermc.wicked_expressions = $we_copy_args#qint$17 reapermc.wicked_expressions
scoreboard players operation $we_copy_args#copy_args$5 reapermc.wicked_expressions = $bazz bazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.10 set from storage fazz:fazz fazz
data modify storage reapermc:wicked_expressions data.we_copy_args.copy_args.11 set from storage fazz:fazz fazz
```

### we_copy_args

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add bazz dummy
```

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_copy_args#qint$0 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$1 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$2 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$3 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$4 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$5 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$6 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$7 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$8 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$9 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$10 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$11 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$12 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$13 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$14 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$15 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$16 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$17 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$18 reapermc.wicked_expressions
scoreboard players reset $we_copy_args#qint$19 reapermc.wicked_expressions
```

`@function we_copy_args:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_copy_args:reapermc/wicked_expressions/loader`

```mcfunction
function we_copy_args:reapermc/wicked_expressions/loader/prio_0
function we_copy_args:reapermc/wicked_expressions/loader/prio_1
function we_copy_args:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_copy_args:reapermc/wicked_expressions/loader"
  ]
}
```
