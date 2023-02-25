# Low level operations

There may still be cases which the library does not cover. In edge cases like these, the `.get()` and `.store()` methods may prove useful.


## `Store` example

Retrieving the current gametime.

Let's store the current gametime into a score.

```py
from wicked_expressions:api import Scoreboard

current_gametime = Scoreboard('foo')['$current_gametime']

with current_gametime.store():
    time query gametime
```

<details><summary>Generated Commands</summary><p>

```mcfunction
execute store result score $current_gametime foo run time query gametime
```

</p></details>



## `Get` example

Low level operation of manually using `get` and `store` together.

```py
from wicked_expressions:api import Scoreboard, this

x = Scoreboard('foo')['$x']

as @e[type=zombie]:
    with this.Health.store(type='float'):
        x.get()
```


<details><summary>Generated Commands</summary><p>

```mcfunction
execute as @e[type=zombie] store result entity @s Health float 1 run scoreboard players get $x foo
```

</p></details>

