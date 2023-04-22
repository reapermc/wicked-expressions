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
> Display name of the scoreboard.


## Remarks

Used objectives are automatically created on `minecraft:load`.

The `display_name` argument takes both `dict` and `str` types.


## Comparison operators

Constructed objects can use comparison operators.

Supports `if`, `not`, `elif` and `else`.

For examples below:
- `foo` - Constructed `Scoreboard` object
- `bar` - Literal value, constructed `Scoreboard` object or constructed `Data` object 

<br>

**`None`**
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
