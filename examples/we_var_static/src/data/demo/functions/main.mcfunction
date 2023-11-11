from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Int, Float, Double

def foo():
    x = Var(Int, 10)
    y = StaticVar(Int, 20)
    print(x)    # unique for each time 'foo' runs
    print(y)    # the same for each time 'foo' runs

foo()
foo()

def bar():
    function demo:static_path:
        # x = Var(Int, 10)        # <- function redefinition error
        x = StaticVar(Int, 10)    # use StaticVar instead
        y = StaticVar(Float, 3.14159)
        z = StaticVar(Float, 1.5)

bar()
bar()
