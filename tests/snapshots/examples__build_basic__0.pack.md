# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 15,
    "description": ""
  }
}
```

### test

`@function test:main`

```mcfunction
scoreboard players add @s abc.main 10
scoreboard players set $foo obj.random 4
scoreboard players set #pack.major load.status 1
scoreboard players set #pack.minor load.status 18
scoreboard players set #pack.patch load.status 2
scoreboard players set $x abc.main 0
scoreboard players set $y abc.main 1
scoreboard players set $z abc.main 2
scoreboard players enable @a abc.settings
```

`@function test:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add abc.main dummy
scoreboard objectives add obj.random dummy
scoreboard objectives add load.status dummy
scoreboard objectives add abc.settings trigger
```

`@function test:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function test:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function test:reapermc/wicked_expressions/loader`

```mcfunction
function test:reapermc/wicked_expressions/loader/prio_0
function test:reapermc/wicked_expressions/loader/prio_1
function test:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:reapermc/wicked_expressions/loader"
  ]
}
```
