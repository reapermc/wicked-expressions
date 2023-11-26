from wicked_expressions:api import Var, Bool, Byte

var_bool   = Var(Bool)
var_byte   = Var(Byte)

# Make sure nothing is emitted because this is not used
unused_var = (var_byte > 10) == (var_bool > 1)

function demo:to_score:
    var_bool = (var_byte == 10) == (var_byte != 11)
    var_bool = (var_byte != 10) != (var_byte == 11)
    var_bool = (var_byte == 10) > (var_byte == 11)
    var_bool = (var_byte != 10) < (var_byte != 11)
    var_bool = (var_byte == 10) >= (var_byte != 11)
    var_bool = (var_byte == 10) <= (var_byte == 11)

function demo:to_data:
    var_byte = (var_byte == 10) == (var_byte != 11)
    var_byte = (var_byte != 10) != (var_byte == 11)
    var_byte = (var_byte == 10) > (var_byte == 11)
    var_byte = (var_byte != 10) < (var_byte != 11)
    var_byte = (var_byte == 10) >= (var_byte != 11)
    var_byte = (var_byte == 10) <= (var_byte == 11)