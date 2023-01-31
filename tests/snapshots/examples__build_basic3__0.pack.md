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

### demo

`@function demo:main`

```mcfunction
execute store result score $score_0 objective_0 run time query gametime
execute store success score selector objective_0 run time query gametime
execute store result storage test:storage_0 data_0 int 1 run time query gametime
execute store success storage test:storage_0 data_0 int 69 run time query gametime
execute store result storage test:storage_0 data_0 float 0.5 run time query gametime
execute store result entity @s nbt_path int 10 run time query gametime
execute store result score $score_0 objective_0 run data get entity @s nbt_path
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic3:wicked_expressions/init"
  ]
}
```

### basic3

`@function basic3:wicked_expressions/init`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add objective_0 dummy {"text": "objective_0", "color": "aqua"}
```
