# Scoreboard

Defining scoreboards is the same as the base library, with one small twist.

Objectives are created automatically, triggered by `minecraft:load`. No more `scoreboard objectives add ..` required!


## Code Example

Example shown below will auto-create a `foobar` objective of criteria `dummy`, then add `10` to the fake player `$test`

```py
from wicked_expressions:api import Scoreboard

x = Scoreboard('foobar')

x['$test'] += 10
```

<details><summary>Generated Commands</summary><p>

```mcfunction
scoreboard players add $test foobar 10
```

</p></details>




