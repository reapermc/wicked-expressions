from wicked_expressions:api import Var, Data, Byte, Float



foo = Var(Byte, 10)
bar = Var(Float, 3.14)

# foo = Data.cast(bar, 'float')

# static test
def regular_cast():
    foo = Data.cast(bar, 'byte')

def static_cast():
    foo = Data.static_cast(bar, 'byte')

regular_cast()
regular_cast()

static_cast()
static_cast()

raw f" "

# cast in method form
foo = bar.cast('byte')
foo = Data.cast(bar, Byte)