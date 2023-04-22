# Checking if score/data exists

Normally, checking if an nbt value or scoreboard value exists requires boilerplate code and the solutions aren't very intuitive.

This feature attempts to fix that.

## Simple example

Checking if an expression exists is done using the `.exists()` method for both scores and data.

```py
from wicked_expressions:api import Scoreboard, Data

x = Scoreboard('foo')['$x']
y = Data.storage('bar').data.y

if x.exists():
    tellraw @s "x value exists"
else:
    tellraw @s "x value does not exist"

if y.exists():
    tellraw @s "y value exists"
else:
    tellraw @s "y value does not exist"
```

<details><summary>Generated Commands</summary><p>

```mcfunction
execute if score $x foo = $x foo run tellraw @s "x value exists"
execute unless score $x foo = $x foo run tellraw @s "x value does not exist"
execute if data storage bar data.y run tellraw @s "y value exists"
execute unless data storage bar data.y run tellraw @s "y value does not exist"
```

</p></details>
