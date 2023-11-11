from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, Byte, Short, Int, Long, Float, Double

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

foo = Var(Int)

var_bool = Var(Bool)
var_byte = Var(Byte)
var_short = Var(Short)
var_int = Var(Int)
var_long = Var(Long)
var_float = Var(Float)
var_double = Var(Double)

dbg_sep('Bool -> Int')
foo = var_bool.cast(Int)

dbg_sep('Byte -> Int')
foo = var_byte.cast(Int)

dbg_sep('Short -> Int')
foo = var_short.cast(Int)

dbg_sep('Int -> Int')
foo = var_int       # no need to cast

dbg_sep('Long -> Int')
foo = var_long.cast(Int)

dbg_sep('Float -> Int')
foo = var_float.cast(Int)

dbg_sep('Double -> Int')
foo = var_double.cast(Int)
