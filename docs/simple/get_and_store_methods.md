# Using the get and store methods

The `.get()` and `.store()` methods are a useful low level tool to have for edge cases.


## Retrieving the current gametime

In order to retrieve the current gametime, we can use the `.store()` method.

First let's import and define a score to store into.

```py
from wicked_expressions:api import Scoreboard

x = Scoreboard('test')['$current_gametime']
```

Now let's store the gametime into it.

```py
with x.store():
    time query gametime
```

As you can see, we use the `with` statement along with it. We're forced to use it as the function runs on a `contextmanager`.


## Setting a zombie's Health to the current day

First the formalities. This time we'll import the `this` expression (more on it in [here](./this_expression.md)).

```py
from wicked_expressions:api import this
```

Now let's store the current day into the nearest zombie's `Health` NBT

```py
as @e[type=zombie,sort=nearest,limit=1]:
    with this.Health.store(type='float'):
        time query day
```

Here we also specified the `type` argument since we explicitly want a `float` value.
