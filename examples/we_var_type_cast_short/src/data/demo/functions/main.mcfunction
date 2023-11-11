from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, Byte, Short, Int, Long, Float, Double

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

foo = Var(Short)

var_bool = Var(Bool)
var_byte = Var(Byte)
var_short = Var(Short)
var_int = Var(Int)
var_long = Var(Long)
var_float = Var(Float)
var_double = Var(Double)

dbg_sep('Bool -> Short')
foo = var_bool.cast(Short)

dbg_sep('Byte -> Short')
foo = var_byte.cast(Short)

dbg_sep('Short -> Short')
foo = var_short         # no need to cast

dbg_sep('Int -> Short')
foo = var_int.cast(Short)

dbg_sep('Long -> Short')
foo = var_long.cast(Short)

dbg_sep('Float -> Short')
foo = var_float.cast(Short)

dbg_sep('Double -> Short')
foo = var_double.cast(Short)
