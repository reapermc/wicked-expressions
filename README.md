# wicked-expressions

[![GitHub Actions](https://github.com/reapermc/wicked-expressions/workflows/CI/badge.svg)](https://github.com/reapermc/wicked-expressions/actions)

> Extension of bolt-expressions written in Bolt.

> [!WARNING]
> This library is now mostly reduntant as of [bolt-expressions](https://github.com/rx-modules/bolt-expressions) version [v0.15.0](https://github.com/rx-modules/bolt-expressions/releases/tag/v0.15.0) with the addition of conditional statements built into the base library.<br><br>
> Other features such as annonymous variables may come as a separate library in the future!<br><br>
> Thank you for using my library!

## Introduction

This is an extension of the [bolt-expressions](https://github.com/rx-modules/bolt-expressions) package. I highly recommend getting accustom to the original before using this one. This package is meant to build upon it by adding more functionality.


```py
from wicked_expressions:api import Scoreboard, Var, Float

foo = Scoreboard('demo')['$foo']
bar = Var(Float, 3.14159)

foo = 123
data_0 = 30

if foo == 1:
    tellraw @a "foo == 1"
else:
    tellraw @a "foo != 1"

if bar == 3.14159:
    tellraw @a "yes :3"
else:
    tellraw @a "no :<"
```

## Installation

```bash
pip install wicked_expressions
```

## Getting started

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


## Documentation

Docs available [here](./docs/home.md).

## Features

- Most if not all the functionality of [bolt-expressions](https://github.com/rx-modules/bolt-expressions).
- Built in score & data comparison using python's comparison operators.
- Useful functions and methods especially for bolt library developers such as `.store()` and `.get()`.
- Anonymous runtime variables.
- DataStash feature allowing per-entity data.

---

License - [MIT](https://github.com/reapermc/wicked-expressions/blob/main/LICENSE)
