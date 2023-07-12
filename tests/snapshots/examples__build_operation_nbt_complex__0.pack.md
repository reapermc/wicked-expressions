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
data modify entity @s Inventory[].tag.list set value {items: [{id: "diamond", Count: 12}, {id: "diamond_axe", Count: 12, tag: {CustomModelData: 1234}}], used: 0b, things: {abc: 123.456d, cdf: 123s}}
data modify storage demo:prefix/temp items[0] set value {id: "diamond", Count: 1, tag: {}}
data modify storage demo:prefix/temp items[1] set value {id: "iron_ingot", Count: 15, tag: {}}
data modify storage demo:prefix/temp items[2] set value {id: "iron_sword", Count: 1, tag: {Damage: 0s, display: {Name: '{"text":"Excalibur","color":"gold"}'}}}
data modify storage demo:prefix/temp foo set from storage demo:prefix/temp bar
```

`@function test:reapermc/wicked_expressions/safe_load`

```mcfunction
function test:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function test:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add abc.main dummy
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "test:reapermc/wicked_expressions/safe_load"
  ]
}
```
