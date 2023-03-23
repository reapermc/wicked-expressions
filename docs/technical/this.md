# this

> Built-in object that allows for easier manipulation of @s entity data.

```py
as @e[type=zombie]:
    this.PortalCooldown = 300
```

## Remarks

`this` is equal to a `Data.entity('@s')` constructed object.

It's just easier to use and reduces boilerplate.