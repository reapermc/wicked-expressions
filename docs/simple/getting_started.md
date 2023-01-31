# Getting started

This package is designed to be used within any `bolt` script (either a `.mcfunction` or `bolt` file) inside a `bolt` enabled project.
```yaml
require:
    - bolt
    - wicked_expressions

pipeline:
    - mecha
```

Once you've required `bolt` and `wicked-expressions`, you are able to import the python package's `api` module directly inside your bolt script.

```py
from wicked_expressions:api import Scoreboard, Data
```

Now you're free to use the API objects. Create simple and complex expressions, compare storages with scores, scores with scores, check if scores exist and more.

## Coming next

Since this is an extension of [bolt-expressions](https://github.com/rx-modules/bolt-expressions), I highly recommend getting accustom to using it first. Knowing how to use it effectively is required to understanding anything in here. I will only be explaining the things that differ from it, so be sure to check it out first!


