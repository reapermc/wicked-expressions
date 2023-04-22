# Checking if a value is an expression

`isinstance` can be used for determining whether a value is an expression or a literal.


```py
from wicked_expressions:api import Scoreboard, ExpressionNode

x = Scoreboard('test')['$x']
y = 'I am just a literal string'

print(isinstance(x, ExpressionNode))     # output: True
print(isinstance(y, ExpressionNode))     # output: False
```