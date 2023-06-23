# Comparing expressions

Directly compare scores to scores, storage-NBT to player-NBT, data to static values and much more!


## Basic concept

Every `Data`+`nbt_path` and `Scoreboard`+`fake_player` expression supports all of [python's comparison operators](https://www.w3schools.com/python/gloss_python_comparison_operators.asp).


## Simple example

```py
from wicked_expressions:api import Scoreboard, Data


x = Scoreboard('foo')['$x']
y = Data.storage('bar').data.y


if x == y:
    tellraw @s "true"
else:
    tellraw @s "false"
```

<details><summary>Generated Commands</summary><p>

```mcfunction
execute store result storage wicked_expressions:private temp int 1 run scoreboard players get $x foo
execute store success score $is_not_equal wicked_expressions run data modify storage wicked_expressions:private temp set from storage bar data.y
execute if score $is_not_equal wicked_expressions matches 0 run tellraw @s "true"
execute if score $is_not_equal wicked_expressions matches 1 run tellraw @s "false"
```

</p></details>








