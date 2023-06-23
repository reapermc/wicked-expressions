## this

In `bolt-expressions`, accessing the nbt data of `@s` sometimes gets pretty verbose.

For instance:
```py
from bolt_expressions import Data

my_data = Data.entity('@s')

my_data.PortalCooldown = 420
```

We can do better by not having to define `my_data` and instead importing `this`.

```py
from wicked_expressions:api import this

this.PortalCooldown = 420
```

This works, because `this` is literally `Data.entity('@s')` under the hood.

This lets us avoid a lot of boilerplate.