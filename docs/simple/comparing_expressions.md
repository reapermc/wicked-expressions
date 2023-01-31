# Comparing expressions

Directly compare scores to scores, storage-NBT to player-NBT, data to static values and much more!


## Basic concept

Every `Data`+`nbt_path` and `Scoreboard`+`fake_player` expression supports [python's comparison operators](https://www.w3schools.com/python/gloss_python_comparison_operators.asp).


## Simple example

First we will define a `Scoreboard` and `Data.storage`.

```py
from wicked_expressions:api import Scoreboard, Data

test_score = Scoreboard('test_objective')
test_storage = Data.storage('test_storage')
```

Next let's set some arbitrary values.

```py
test_score['$x'] = 30
test_score['$y'] = 10
test_storage.stats.accuracy = 100
```

We can now compare the values to each other.

```py
if test_score['$x'] == test_storage.stats.accuracy:
    tellraw @a "equal!"
else:
    tellraw @a "not equal!"
```

# Complex example

Let's do a more complex example. First we'll import `Scoreboard` and `Data` and define our expressions.

```py
from wicked_expressions:api import Scoreboard, Data

scb = Scoreboard('test')
stge = Data.storage('test:test')
```

We will also split the expressions up into variables to keep it clean.

```py
x = scb['$x']
y = scb['$y']
accuracy = stge.stats.accuracy
```

Now let's use the `>` operator as well as the `if`, `elif` and `else` statement all together.

```py
if x > y:
    tellraw @a "x is bigger than y"
elif x == accuracy:
    tellraw @a "x is smaller than y, it's also equal to accuracy"
else:
    tellraw @a "x is simply smaller than y period"
```






