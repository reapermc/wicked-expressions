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
scoreboard players set $score_0 test_objective 123
data modify storage my_library:internal data_0 set value 30
scoreboard players operation $temp wicked_expressions = $score_0 test_objective
execute if score $temp wicked_expressions matches 1 run say score_0 is 1
scoreboard players operation $temp wicked_expressions = $score_0 test_objective
execute if score $temp wicked_expressions matches 0 run say score_0 is 0
execute store result score $arg_0 wicked_expressions run data get storage my_library:internal data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 test_objective
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say data_0 is bigger than 30
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run function demo:main/nested_execute_0
```

`@function demo:main/nested_execute_0`

```mcfunction
data modify storage wicked_expressions:private temp set from storage my_library:internal data_0
execute store success score $is_not_equal wicked_expressions store result storage wicked_expressions:private temp int 1 run scoreboard players get $score_0 test_objective
execute if score $is_not_equal wicked_expressions matches 0 run say data_0 is equal to score_0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_advanced1:wicked_expressions/create_objectives"
  ]
}
```

### we_advanced1

`@function we_advanced1:wicked_expressions/create_objectives`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add test_objective dummy {"text": "test_objective", "color": "aqua"}
```
