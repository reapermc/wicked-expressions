# wicked-expressions

[![GitHub Actions](https://github.com/reapermc/wicked-expressions/workflows/CI/badge.svg)](https://github.com/reapermc/wicked-expressions/actions)

> Extension of bolt-expressions written in Bolt.


## Introduction

**Minecraft version: `1.19.4`**

This is an extension of the [bolt-expressions](https://github.com/rx-modules/bolt-expressions) package. I highly recommend getting accustom to the original before using this one. This package is meant to build upon it by adding more functionality.


```py
from wicked_expressions:api import Scoreboard, Data

score_0 = Scoreboard('test_objective')['$score_0']
data_0 = Data.storage('my_library:internal')['data_0']

score_0 = 123
data_0 = 30

if score_0:
    tellraw @a "score_0 == 1"
else:
    tellraw @a "score_0 != 1"

if data_0 > score_0:
    tellraw @a "data_0 is bigger than 30"
elif data_0 == score_0:
    tellraw @a "data_0 is equal to score_0"
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
