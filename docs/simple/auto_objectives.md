# Automatically creating objectives

Objectives are automatically created for us on the fly.


```py
from wicked_expressions:api import Scoreboard

x = Scoreboard('test_scoreboard')
```

Defining a `Scoreboard` expression automatically generates the `scoreboard objectives add` command which run on `#minecraft:load`.
