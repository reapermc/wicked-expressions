# Runtime variables

Quick and easy anonymous storage/score locations.


## Intro

Runtime variables are an anonymous data storage tool. They are statically typed, flushed on `/reload` and lack names internally.

Each runtime variable you define has to be typed. Under the hood all types are stored as `storage` format. The only exceptions to this rule are types `Int` and `Bool`, which are stored as a `scoreboard` format instead.


## How to use them

To define a runtime variable you first need to import the `Var` class as well as the desired type.

After definition, their methods and usage are the same as those of `Data` or `Scoreboard`.

```py
from wicked_expressions:api import Var, Int, String

# defining the runtime variable
x = Var(Int)
y = Var(String)

# example, setting the runtime variable
x = 10
y = 'test123'

# well, we can do anything we want with it really
tellraw @a x
tellraw @a y
```



