from wicked_expressions:api import Var, StaticVar
from wicked_expressions:var_types import Bool, qInt, Byte

def dbg_sep(text = ''):
    raw f" "
    raw f"# {text}"

var_byte = Var(Byte)
var_bool = Var(Bool)
var_qint = Var(qInt)

var_qint = var_byte.cast(qInt)
var_bool = var_byte.cast(Bool)


