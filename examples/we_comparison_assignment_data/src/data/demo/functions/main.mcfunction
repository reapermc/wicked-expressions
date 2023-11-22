from wicked_expressions:api import Var, qInt, Int, Bool, Byte, Short, Long, Double, Float, List, Compound, String

var_bool   = Var(Bool)
var_byte   = Var(Byte)
var_short  = Var(Short)
var_qint   = Var(qInt)
var_int    = Var(Int)
var_long   = Var(Long)
var_float  = Var(Float)
var_double = Var(Double)

compare_data = Var(Int)

# These should give an error, but I don't know how to test this.
# var_bool = Var(List)
# var_bool = Var(Compound)
# var_bool = Var(String)

function demo:bool:
    var_bool = compare_data.exists()
    var_bool = compare_data == 42
    var_bool = compare_data != 42

function demo:byte:
    var_byte = compare_data.exists()
    var_byte = compare_data == 42
    var_byte = compare_data != 42

function demo:short:
    var_short = compare_data.exists()
    var_short = compare_data == 42
    var_short = compare_data != 42

function demo:qint:
    var_qint = compare_data.exists()
    var_qint = compare_data == 42
    var_qint = compare_data != 42

function demo:int:
    var_int = compare_data.exists()
    var_int = compare_data == 42
    var_int = compare_data != 42

function demo:long:
    var_long = compare_data.exists()
    var_long = compare_data == 42
    var_long = compare_data != 42

function demo:float:
    var_float = compare_data.exists()
    var_float = compare_data == 42
    var_float = compare_data != 42

function demo:double:
    var_double = compare_data.exists()
    var_double = compare_data == 42
    var_double = compare_data != 42