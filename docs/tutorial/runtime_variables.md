# Runtime variables

Ever needed a temporary score, but had to waste time figuring out a name for it? Or worse had to make a whole new scoreboard objective?

Runtime variables offer an easy solution to that!


## What are they?

Runtime variables are an anonymous data storage tool. They are statically typed, flushed on `/reload` and lack names internally.


## How to use them

To define a runtime variable you first need to import them as well as the desired type.

After definition, their methods and usage are pretty much the same as `Data` or `Scoreboard`.

```py
from wicked_expressions:api import Var, Int, String

# defining the runtime variable
x = Var(Int)
y = Var(String)

# setting the runtime variable to 10
x = 10
y = 'test123'

# we can do anything we want with it
tellraw @a x
tellraw @a y
```



