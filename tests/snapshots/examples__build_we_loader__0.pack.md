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
execute store success score $we_loader#bool$0 reapermc.wicked_expressions if score $y bar = $y bar
execute unless score $we_loader#bool$0 reapermc.wicked_expressions matches 0 run say hi
execute store success score $we_loader#bool$1 reapermc.wicked_expressions if score $y bar = $y bar
execute unless score $we_loader#bool$1 reapermc.wicked_expressions matches 0 run say hi2
```

### we_loader

`@function we_loader:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add foo dummy
scoreboard objectives add bar dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_loader:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $we_loader#bool$0 reapermc.wicked_expressions
scoreboard players reset $we_loader#bool$1 reapermc.wicked_expressions
```

`@function we_loader:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function we_loader:reapermc/wicked_expressions/loader`

```mcfunction
function we_loader:reapermc/wicked_expressions/loader/prio_0
function we_loader:reapermc/wicked_expressions/loader/prio_1
function we_loader:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_loader:reapermc/wicked_expressions/loader"
  ]
}
```
