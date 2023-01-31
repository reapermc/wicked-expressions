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
execute if score $score_0 test_objective = $score_0 test_objective run say score_0 has a value
execute unless score $score_0 test_objective = $score_0 test_objective run say score_0 has no value
execute store result score $arg_0 wicked_expressions run data get storage my_library:internal data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 test_objective
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say data_0 is bigger than 30
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run function demo:main/nested_execute_0
```

`@function demo:main/nested_execute_0`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage my_library:internal data_0
execute store success score $is_not_equal wicked_expressions store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $score_0 test_objective
execute if score $is_not_equal wicked_expressions matches 0 run say data_0 is equal to score_0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "advanced1:wicked_expressions/init"
  ]
}
```

### advanced1

`@function advanced1:wicked_expressions/init`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add test_objective dummy {"text": "test_objective", "color": "aqua"}
```
