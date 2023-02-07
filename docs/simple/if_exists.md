# Checking if score/data exists


Normally in datapacks checking if score/data exists (has a value assigned) is really unintuitive and complicated. With this package, we can instead easily do it as shown below.


## Simple example

First lets define our scoreboard and storage expressions. We will also add a fake player and nbt path to them right away to keep things cleaner.

```py
from wicked_expressions:api import Scoreboard, Data

test_score = Scoreboard('test_objective')['$fake_player']
test_storage = Data.storage('test:storage').data.brain
```

We can now check if the score exists head on using `if test_score.exists()`. Checking both scoreboards and storage has the same uniform syntax.

```py
if test_score.exists():
    tellraw @a "score exists!"

if test_storage.exists():
    tellraw @a "data exists!"
```

The `else` and `not` statements are also supported. Here we'll invert the initial `if` using `not` and add an `else` statement.

```py
if not test_score.exists():
    tellraw @a "score does not exists!"
else:
    tellraw @a "score exists!"
```

**NOTE: Straight up calling the `.exists()` method (eg. `score_0 = score_1.exists()`) doesn't yet work.**


## How it works


The scoreboard part uses the idea of comparing a score with itself. In Minecraft, doing that outputs a `True` when the score exists and `False` when it does not.

The data part uses a straight forward `execute if data storage <storage> <nbt_path>` approach.
