# Runtime variables

> Anonymous runtime variables.

```py
x = Var(type_annotation)
y = StaticVar(type_annotation)
```

## Arguments

**`type_annotation`**
> Desired NBT type.

## Remarks

Runtime variables are stored in `storage` form, with the exception of `Int` and `Bool`, as those are stored in a `scoreboard`. Keep this in mind while doing math-based operations, as using an `Int` runtime variable is likely more efficient.

`StaticVar`, unlike `Var` keeps track of where the variable was constructed. It's useful for cases like this:

```py
def half_number(value):
    # constructing a StaticVar
    output = StaticVar(Int)
    
    # setting the output to a given value
    output = value

    # dividing it in half
    output /= 2

    # returning the output variable
    return output
```

The reason `Var` is bad in this example is every time the function is called, a new variable is created, where as `StaticVar` ensures it's just one variable location, no matter how many times the function is called.


## NBT type table

| class name   | low level type | storage / objective          | nbt path / score holder                    |
| :-           | :-             | :-                           | :-                                         |
| `Bool`       | scoreboard     | `wicked_expressions`         | `${project_id}#bool${var_index}`           |
| `Byte`       | storage        | `wicked_expressions:private` | `{project_id}.data.byte[{var_index}]`      |
| `Short`      | storage        | `wicked_expressions:private` | `{project_id}.data.short[{var_index}]`     |
| `Int`        | scoreboard     | `wicked_expressions`         | `${project_id}#int${var_index}`            |
| `Long`       | storage        | `wicked_expressions:private` | `{project_id}.data.long[{var_index}]`      |
| `Float`      | storage        | `wicked_expressions:private` | `{project_id}.data.float[{var_index}]`     |
| `Double`     | storage        | `wicked_expressions:private` | `{project_id}.data.double[{var_index}]`    |
| `String`     | storage        | `wicked_expressions:private` | `{project_id}.data.string[{var_index}]`    |
| `List`       | storage        | `wicked_expressions:private` | `{project_id}.data.list[{var_index}]`      |

> `class name` - class name to import & use as the `Var` and `StaticVar` argument.<br>
> `low level type` - indicates whether the NBT type is stored in a scoreboard or storage.<br>
> `storage root / objective` - the storage or objective the variable is stored in.<br>
> `nbt path / score holder` - nbt path or score holder the variable is stored in.
