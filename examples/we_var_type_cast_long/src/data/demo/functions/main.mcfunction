from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, Byte, Short, Int, Long, Float, Double

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

foo = Var(Long)

var_bool = Var(Bool)
var_byte = Var(Byte)
var_short = Var(Short)
var_int = Var(Int)
var_long = Var(Long)
var_float = Var(Float)
var_double = Var(Double)

dbg_sep('Bool -> Long')
foo = var_bool.cast(Long)

dbg_sep('Byte -> Long')
foo = var_byte.cast(Long)

dbg_sep('Short -> Long')
foo = var_short.cast(Long)

dbg_sep('Int -> Long')
foo = var_int.cast(Long)

dbg_sep('Long -> Long')
foo = var_long      # no need to cast

dbg_sep('Float -> Long')
foo = var_float.cast(Long)

dbg_sep('Double -> Long')
foo = var_double.cast(Long)
