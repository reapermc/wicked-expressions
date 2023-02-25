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

Once you've required `bolt` and `wicked-expressions`, you are able to import the python package's `api` module directly inside your bolt script.

```py
from wicked_expressions:api import Scoreboard
```

All the features are supposed to be imported from the `wicked_expressions:api` module as shown above.

Now you're free to use the API. Use simple and complex expressions, compare expressions and have access to many more features of the library!


## Baseline tutorial

The base behavior is very well documented in the [bolt-expressions](https://github.com/rx-modules/bolt-expressions) documentation. You can check it out [here](https://rx-modules.github.io/bolt-expressions/tutorial/).

The rest of the documentation will solely focus on the differences and new features introduced by this library.