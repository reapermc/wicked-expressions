# Checking if a value is an expression

We can easily determine if a given value is an expression or not during compiletime using the `is_expression()` function, which may be useful for developing various kinds of libraries.


```py
from wicked_expressions:api import Scoreboard, is_expression

x = Scoreboard('test')['$x']
y = 'I am a string'

print(is_expression(x))     # output: True
print(is_expression(y))     # output: False
```