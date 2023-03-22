# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 10,
    "description": ""
  }
}
```

### wicked_expressions

`@function wicked_expressions:scoreboard_setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add objective_0 dummy {"text": "objective_0", "color": "aqua"}
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
execute store result score $temp wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $temp wicked_expressions matches 1 run say hello
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup"
  ]
}
```
