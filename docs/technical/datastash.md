# DataStash

> Allows for storing per-entity NBT.

```py
foo = DataStash(nbt_path: str)
```

## Arguments

**`nbt_path`**
> Target NBT path.


## Methods

### get
```py
bar = foo.get(index: int = None)
```
> **`index`** (optional) - List index to retrieve.

### set
```py
foo.set(value: Any, index: int = None)
```
> **`value`** - Value to set.<br>
> **`index`** (optional) - List index to set.

### remove
```py
foo.remove(index: Any)
```
> **`index`** (optional) - List index to remove.

### merge
```py
foo.merge(value: Any)
```
> **`value`** - Value to merge.

### append
```py
foo.append(value: Any)
```
> **`value`** - Value to append.

### prepend
```py
foo.prepend(value: Any)
```
> **`value`** - Value to prepend.

### insert
```py
.insert(index: int, value: Any)
```
> **`index`** - Index to insert into.<br>
> **`value`** - Value to insert.
