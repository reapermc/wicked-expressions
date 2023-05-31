# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
execute store result score $score_0 objective_0 run time query gametime
execute store success score $score_0 objective_0 run time query gametime
execute store result storage test:storage_0 data_0 int 1 run time query gametime
execute store success storage test:storage_0 data_0 int 69 run time query gametime
execute store result storage test:storage_0 data_0 float 0.5 run time query gametime
execute store result entity @s nbt_path int 10 run time query gametime
execute store result score $score_0 objective_0 run data get entity @s nbt_path
```

`@function demo:eq_overload_pls_no_break_test`

```mcfunction
execute store result score $temp reapermc.wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $temp reapermc.wicked_expressions matches 1 run say hello
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_basic3:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_basic3

`@function we_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add objective_0 dummy
```

`@function we_basic3:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup
```
