# Data

> A class used for data manipulation.

```py
x = Data.storage(resource_location: str)
y = Data.entity(entity: str)
z = Data.block(position: str)
```

## Arguments

**`(storage) resource_location`**
> Storage name.

**`(entity) entity`**
> Entity selector to target.

**`(block) position`**
> 3D coordinate position of the block.


## Comparison operators

Constructed objects can use comparison operators.

Supports `if`, `not`, `elif` and `else`.

For examples below:
- `foo` - Constructed `Data` object
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
