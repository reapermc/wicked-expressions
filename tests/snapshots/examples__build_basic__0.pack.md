# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 10,
    "description": ""
  }
}
```

### wicked_expressions

`@function wicked_expressions:scoreboard_setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add abc.main dummy {"text": "abc.main", "color": "aqua"}
scoreboard objectives add obj.random dummy {"text": "obj.random", "color": "aqua"}
scoreboard objectives add load.status dummy {"text": "load.status", "color": "aqua"}
scoreboard objectives add abc.settings trigger {"text": "abc.settings", "color": "aqua"}
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

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup"
  ]
}
```
