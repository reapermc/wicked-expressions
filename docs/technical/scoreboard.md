# Scoreboard

> A class used for scoreboard manipulation.

```py
foo = Scoreboard(name: str, criteria: str, prefixed=True, display_name: str | dict)
```

## Arguments

**`name`**
> The in game scoreboard objective name.

**`criteria`**
> Scoreboard criteria. If omitted, defaults to `dummy`.

**`prefixed`**
> Required argument for bolt-expressions reverse compatibility.

**`display_name`**
> Display name of the scoreboard. If omitted, defaults to the scoreboard `id`.


## Remarks

Constructing a `Scoreboard` object appends the target objective to a list. 
Objectives from the list are created automatically on `minecraft:load`.

The display name of the objective is `aqua`. The display name is also set to the objective name by default.

The `display_name` argument takes both `dict` and `str` types.

- `str`: Sets the display name to the specified string. Color is still `aqua`.
- `dict`: Overrides the whole vanilla display name field with the dict.

## Comparison operators

Constructed objects can use comparison operators.

Supports `not`, `else` and `elif`.

For examples below:
- `foo` - Constructed `Scoreboard` object
- `bar` - Literal value, constructed `Scoreboard` object or constructed `Data` object 

<br>

**` `**
```py
# equivalent to:
#   if foo == 1:
#       ... 
#

if foo:
    ...
```

**`==`**
```py
if foo == bar:
    ...
```

**`!=`**
```py
if foo != bar:
    ...
```

**`<`**
```py
if foo < bar:
    ...
```

**`>`**
```py
if foo > bar:
    ...
```

**`<=`**
```py
if foo >= bar:
    ...
```

**`>=`**
```py
if foo >= bar:
    ...
```
