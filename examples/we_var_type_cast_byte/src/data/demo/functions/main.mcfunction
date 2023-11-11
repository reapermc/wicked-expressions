from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, Byte, Short, Int, Long, Float, Double

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

foo = Var(Byte)

var_bool = Var(Bool)
var_byte = Var(Byte)
var_short = Var(Short)
var_int = Var(Int)
var_long = Var(Long)
var_float = Var(Float)
var_double = Var(Double)

dbg_sep('Bool -> Byte')
foo = var_bool.cast(Byte)

dbg_sep('Byte -> Byte')
foo = var_byte          # no need to cast

dbg_sep('Short -> Byte')
foo = var_short.cast(Byte)

dbg_sep('Int -> Byte')
foo = var_int.cast(Byte)

dbg_sep('Long -> Byte')
foo = var_long.cast(Byte)

dbg_sep('Float -> Byte')
foo = var_float.cast(Byte)

dbg_sep('Double -> Byte')
foo = var_double.cast(Byte)
