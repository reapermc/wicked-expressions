# DataStash, aka per-entity data

DataStash allows you to store custom, per-entity NBT. It supports all entity types, including players.

## How it works

We first construct a `DataStash` object. It takes an `nbt_path` string as it's only parameter.

A `DataStash` object has usable methods similar to `Data`. The main difference is that it targets the current `@s` selector context.

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