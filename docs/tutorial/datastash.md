# DataStash, aka per-entity data

DataStash allows us to store custom, per-entity NBT. It supports all entities.

## How it works

We first construct a `DataStash` object using the `DataStash` class. It takes `nbt_path` in string form as it's only parameter.

A `DataStash` object has usable methods similar to `Data`. The main difference is that it targets the current `@s` selector.

```py
from wicked_expressions:api import DataStash

foo = DataStash('data.test.my_path')

as @e[type=zombie,tag=bob]:
    # this will set the bob zombie's DataStash value to 10 
    foo.set(10)

as @e[type=skeleton,tag=larry]:
    # and here it will set the skeleton larry's DataStash value instead
    # as it's the current selector
    foo.set(69)
```

The outcome is `bob`'s DataStash looking like this:
```json
{"data": {"test": {"my_path": 10}}}
```
While `larry`'s DataStash looks as such:
```json
{"data": {"test": {"my_path": 69}}}
```