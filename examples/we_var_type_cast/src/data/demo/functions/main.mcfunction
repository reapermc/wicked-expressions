from wicked_expressions:api import Var, StaticVar, Data
from wicked_expressions:var_types import Bool, Int, Byte, Float, Double, qInt

foo = Var(Byte)
bar = Var(Double)
x = Var(Float)
y = Var(Int)
z = Var(Bool)

# x = Data.cast((bar.cast(Float).cast(Int) + Var(Float, 10.3).cast(Int)), Float)
x = Data.cast(bar.cast(Int) + Var(Float, 10.3).cast(Int), Float, scale=1000)

function ./test:
    bool_var = Var(Bool, True)

    if bool_var:
        tellraw @a "yes"
    else:
        tellraw @a "no"

    if y == 10:
        say hello :3
    else:
        say not hello ._.


# foo = bar.cast(Byte, scale=1000) + 10


# x = Data.storage('xd:xd').xd
# y = Data.storage('xd:xd').xd1

# foo = foo + foo

# if x == y:
#     say hello

# x = 10
