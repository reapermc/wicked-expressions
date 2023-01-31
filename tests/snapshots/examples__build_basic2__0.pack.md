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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:if_exists_score`

```mcfunction
execute if score $score_0 objective_0 = $score_0 objective_0 run say true
execute unless score $score_0 objective_0 = $score_0 objective_0 run say false
execute unless score $holder objective_0 = $holder objective_0 run say true
execute if score $holder objective_0 = $holder objective_0 run say false
```

`@function demo:if_exists_data`

```mcfunction
execute if data storage test:storage_0 data_0 run say true
execute unless data storage test:storage_0 data_0 run say false
execute unless data storage test:storage_0 nbt_path run say true
execute if data storage test:storage_0 nbt_path run say false
```

`@function demo:eq_score_int`

```mcfunction
execute if score $score_0 objective_0 matches 10 run say true
execute unless score $score_0 objective_0 matches 10 run say false
```

`@function demo:eq_score_score`

```mcfunction
execute if score $score_0 objective_0 = $score_0 objective_0 run say true
execute unless score $score_0 objective_0 = $score_0 objective_0 run say false
```

`@function demo:eq_score_data`

```mcfunction
execute store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $score_0 objective_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute if score $is_not_equal wicked_expressions matches 0 run say true
execute if score $is_not_equal wicked_expressions matches 1 run say false
```

`@function demo:eq_data_any`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set value 0.5f
execute if score $is_not_equal wicked_expressions matches 0 run say true
execute if score $is_not_equal wicked_expressions matches 1 run say false
```

`@function demo:eq_data_score`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $score_0 objective_0
execute if score $is_not_equal wicked_expressions matches 0 run say true
execute if score $is_not_equal wicked_expressions matches 1 run say false
```

`@function demo:eq_data_data`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute if score $is_not_equal wicked_expressions matches 0 run say true
execute if score $is_not_equal wicked_expressions matches 1 run say false
```

`@function demo:ne_score_int`

```mcfunction
execute unless score $score_0 objective_0 matches 10 run say true
execute if score $score_0 objective_0 matches 10 run say false
```

`@function demo:ne_score_score`

```mcfunction
execute unless score $score_0 objective_0 = $score_0 objective_0 run say true
execute if score $score_0 objective_0 = $score_0 objective_0 run say false
```

`@function demo:ne_score_data`

```mcfunction
execute store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $score_0 objective_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute if score $is_not_equal wicked_expressions matches 1 run say true
execute if score $is_not_equal wicked_expressions matches 0 run say false
```

`@function demo:ne_data_any`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set value 0.5f
execute if score $is_not_equal wicked_expressions matches 1 run say true
execute if score $is_not_equal wicked_expressions matches 0 run say false
```

`@function demo:ne_data_score`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions store result storage reapermc:wicked_expressions temp int 1 run scoreboard players get $score_0 objective_0
execute if score $is_not_equal wicked_expressions matches 1 run say true
execute if score $is_not_equal wicked_expressions matches 0 run say false
```

`@function demo:ne_data_data`

```mcfunction
data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute store success score $is_not_equal wicked_expressions run data modify storage reapermc:wicked_expressions temp set from storage test:storage_0 data_0
execute if score $is_not_equal wicked_expressions matches 1 run say true
execute if score $is_not_equal wicked_expressions matches 0 run say false
```

`@function demo:lt_score_int`

```mcfunction
execute unless score $score_0 objective_0 matches 10.. run say true
execute if score $score_0 objective_0 matches 10.. run say false
```

`@function demo:lt_score_score`

```mcfunction
execute if score $score_0 objective_0 < $score_0 objective_0 run say true
execute if score $score_0 objective_0 >= $score_0 objective_0 run say false
```

`@function demo:lt_score_data`

```mcfunction
scoreboard players operation $arg_0 wicked_expressions = $score_0 objective_0
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say false
```

`@function demo:lt_data_any`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players set $arg_1 wicked_expressions 10
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say false
```

`@function demo:lt_data_score`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 objective_0
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say false
```

`@function demo:lt_data_data`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say false
```

`@function demo:gt_score_int`

```mcfunction
execute unless score $score_0 objective_0 matches ..10 run say true
execute if score $score_0 objective_0 matches ..10 run say false
```

`@function demo:gt_score_score`

```mcfunction
execute if score $score_0 objective_0 > $score_0 objective_0 run say true
execute if score $score_0 objective_0 <= $score_0 objective_0 run say false
```

`@function demo:gt_score_data`

```mcfunction
scoreboard players operation $arg_0 wicked_expressions = $score_0 objective_0
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say false
```

`@function demo:gt_data_any`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players set $arg_1 wicked_expressions 10
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say false
```

`@function demo:gt_data_score`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 objective_0
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say false
```

`@function demo:gt_data_data`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say false
```

`@function demo:le_score_int`

```mcfunction
execute if score $score_0 objective_0 matches ..10 run say true
execute unless score $score_0 objective_0 matches ..10 run say false
```

`@function demo:le_score_score`

```mcfunction
execute if score $score_0 objective_0 <= $score_0 objective_0 run say true
execute if score $score_0 objective_0 > $score_0 objective_0 run say false
```

`@function demo:le_score_data`

```mcfunction
scoreboard players operation $arg_0 wicked_expressions = $score_0 objective_0
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say false
```

`@function demo:le_data_any`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players set $arg_1 wicked_expressions 10
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say false
```

`@function demo:le_data_score`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 objective_0
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say false
```

`@function demo:le_data_data`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions <= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions > $arg_1 wicked_expressions run say false
```

`@function demo:ge_score_int`

```mcfunction
execute if score $score_0 objective_0 matches 10.. run say true
execute unless score $score_0 objective_0 matches 10.. run say false
```

`@function demo:ge_score_score`

```mcfunction
execute if score $score_0 objective_0 >= $score_0 objective_0 run say true
execute if score $score_0 objective_0 < $score_0 objective_0 run say false
```

`@function demo:ge_score_data`

```mcfunction
scoreboard players operation $arg_0 wicked_expressions = $score_0 objective_0
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say false
```

`@function demo:ge_data_any`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players set $arg_1 wicked_expressions 10
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say false
```

`@function demo:ge_data_score`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
scoreboard players operation $arg_1 wicked_expressions = $score_0 objective_0
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say false
```

`@function demo:ge_data_data`

```mcfunction
execute store result score $arg_0 wicked_expressions run data get storage test:storage_0 data_0 1
execute store result score $arg_1 wicked_expressions run data get storage test:storage_0 data_0 1
execute if score $arg_0 wicked_expressions >= $arg_1 wicked_expressions run say true
execute if score $arg_0 wicked_expressions < $arg_1 wicked_expressions run say false
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic2:wicked_expressions/init"
  ]
}
```

### basic2

`@function basic2:wicked_expressions/init`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add objective_0 dummy {"text": "objective_0", "color": "aqua"}
```