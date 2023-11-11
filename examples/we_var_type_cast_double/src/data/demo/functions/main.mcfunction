from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, Byte, Short, Int, Long, Float, Double

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

foo = Var(Double)

var_bool = Var(Bool)
var_byte = Var(Byte)
var_short = Var(Short)
var_int = Var(Int)
var_long = Var(Long)
var_float = Var(Float)
var_double = Var(Double)

dbg_sep('Bool -> Double')
foo = var_bool.cast(Double)

dbg_sep('Byte -> Double')
foo = var_byte.cast(Double)

dbg_sep('Short -> Double')
foo = var_short.cast(Double)

dbg_sep('Int -> Double')
foo = var_int.cast(Double)

dbg_sep('Long -> Double')
foo = var_long.cast(Double)

dbg_sep('Float -> Double')
foo = var_float.cast(Double)

dbg_sep('Double -> Double')
foo = var_double        # no need to cast
