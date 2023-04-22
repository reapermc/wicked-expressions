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

Runtime variables are stored in `storage` form with the exception of `Int` and `Bool`, as those are stored as a `scoreboard`. Keep this in mind while doing math-based operations, as using an `Int` runtime variable is likely the most efficient option.

`StaticVar`, unlike `Var` keeps track of where the variable was constructed. If a variable

Example of where you may want to use `StaticVar` instead of `Var`:

```py
def divide_by_two(value):
    x = StaticVar(Int)

    x = value
    x /= 2
    return x
```

If instead we used `Var`, we'd be generating a new variable location each time we call the function, which is less than ideal.



## NBT type table

| class name   | internal type | storage / objective          | nbt path / score holder                    |
| :-           | :-             | :-                           | :-                                         |
| `Bool`       | `scoreboard`     | `reapermc.wicked_expressions`         | `${project_id}#bool${var_index}`           |
| `Byte`       | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.byte[{var_index}]`      |
| `Short`      | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.short[{var_index}]`     |
| `Int`        | `scoreboard`     | `reapermc.wicked_expressions`         | `${project_id}#int${var_index}`            |
| `Long`       | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.long[{var_index}]`      |
| `Float`      | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.float[{var_index}]`     |
| `Double`     | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.double[{var_index}]`    |
| `String`     | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.string[{var_index}]`    |
| `List`       | `storage`        | `reapermc:wicked_expressions` | `{project_id}.data.list[{var_index}]`      |

> **`class name`** - class name to `import` & use as the `Var` and `StaticVar` argument.<br>
> **`internal type`** - indicates whether the NBT type is stored in a scoreboard or storage.<br>
> **`storage root / objective`** - the storage or objective the variable is stored in.<br>
> **`nbt path / score holder`** - nbt path or score holder the variable is stored in.
