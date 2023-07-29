from wicked_expressions:api import Var, List, Int

x = Var(List)

# default
x = [
    [0,0,0],
    [0,0,0],
    [0,0,0]
]

# override by index literal
x[0][0] = 69

# override by index ExpressionNode
foo = Var(Int)
foo = 420
x[0][1] = foo

print(x)
tellraw @a x