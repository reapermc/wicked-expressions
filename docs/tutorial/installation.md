# Getting started


## Before we begin

I highly recommend first giving [bolt-expressions](https://github.com/rx-modules/bolt-expressions) a shot. This library is built upon it and serves as an extension to it. It's also necessary to understanding some of the concepts shown here.


## Setup tutorial

The library is designed to be used within any `bolt` script (either a `.mcfunction` or `bolt` file) inside a `bolt` enabled project.

```yaml
require:
    - bolt
    - wicked_expressions

pipeline:
    - mecha
```

Once you've required `bolt` and `wicked_expressions`, you are able to import the package's `api` module directly inside your bolt script.

Most of the imports come from the `wicked_expressions:api` module as shown below.

```py
from wicked_expressions:api import Scoreboard
```

Now you're free to use the API. Use simple and complex expressions, compare expressions and have access to many more features of the library!


