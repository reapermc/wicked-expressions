# The 'this' expression

Helps with reducing boilerplate when working with data modification and the `@s` selector.


## The problem

Let's say we want a function which sets the `Health` NBT of `@s` to `5`.

Normally we'd need also define the `Data.entity('@s')` expression as shown below to then modify the NBT.

```py
my_data = Data.entity('@s')     # line in question

function ./example:
    my_data.Health = 5
```

For single use situations that's fine. The problem arises in big projects where `Data.entity('@s')` is defined many times, while it's the same exact thing, which can get quite annoying.


## The solution

To solve this problem we can import the `this` expression.

```py
from wicked_expressions:api import this
```

`this` is a pre-defined `Data.entity('@s')` expression. We can treat it the same way as we would treat an `@s` selector. With this we can completely skip on having to define `Data.entity('@s')` over and over again.

```py
from wicked_expressions:api import this

function ./example:
    this.Health = 5.0
```