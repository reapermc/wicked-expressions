# Checking if score/data exists


Normally in datapacks checking if score/data exists (has a value assigned) is really unintuitive and complicated. With this package, we can instead easily do it as shown below.


## Simple example

First lets define our scoreboard and storage expressions. We will also add a fake player and nbt path to them right away to keep things cleaner.

```py
from wicked_expressions:api import Scoreboard, Data

test_score = Scoreboard('test_objective')['$fake_player']
test_storage = Data.storage('test:storage').data.brain.iq
```

We can now check if the score exists head on using python's `if` statement. Checking both scoreboards and storage has the same uniform syntax.

```py
if test_score:
    tellraw @a "score exists!"

if test_storage:
    tellraw @a "data exists!"
```



The `else` and `not` statements are also supported. Here we'll invert the initial `if` using `not` and add an `else` statement.

```py
if not test_score:
    tellraw @a "score does not exists!"
else:
    tellraw @a "score exists!"
```


## How it works


The scoreboard part uses the idea of comparing a score with itself. In Minecraft, doing that outputs a `True` when the score exists and `False` when it does not.

The data part uses a straight forward `execute if data storage <storage> <nbt_path>` approach.
