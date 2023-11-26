from wicked_expressions:api import Var, qInt, Bool, Byte

var_bool   = Var(Bool)
var_byte   = Var(Byte)
var_qint   = Var(qInt)

# Make sure nothing is emitted because this is not used
unused_var = (var_qint > 10) == (var_bool > 1)

function demo:to_score:
    var_bool = (var_qint == 10) == (var_qint != 11)
    var_bool = (var_qint != 10) != (var_qint == 11)
    var_bool = (var_qint > 10) > (var_qint < 11)
    var_bool = (var_qint < 10) < (var_qint > 11)
    var_bool = (var_qint >= 10) >= (var_qint <= 11)
    var_bool = (var_qint <= 10) <= (var_qint >= 11)

function demo:to_data:
    var_byte = (var_qint == 10) == (var_qint != 11)
    var_byte = (var_qint != 10) != (var_qint == 11)
    var_byte = (var_qint > 10) > (var_qint < 11)
    var_byte = (var_qint < 10) < (var_qint > 11)
    var_byte = (var_qint >= 10) >= (var_qint <= 11)
    var_byte = (var_qint <= 10) <= (var_qint >= 11)