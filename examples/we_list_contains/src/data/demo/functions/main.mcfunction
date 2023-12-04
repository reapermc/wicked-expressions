from wicked_expressions:api import Var, List, Int, Byte, Long, qInt, Bool, IntArray, ByteArray, LongArray, Compound

list_test      = Var(List)
bytearray_test = Var(ByteArray)
intarray_test  = Var(IntArray)
longarray_test = Var(LongArray)

compound_test = Var(Compound)
int_test = Var(Int)
byte_test = Var(Byte)
long_test = Var(Long)
int_score_test = Var(qInt)

result = Var(Bool)

function demo:literals:
    result = {a: "Hey"} in list_test
    result = 42 in bytearray_test
    result = 42 in intarray_test
    result = 42 in longarray_test

function demo:data:
    result = compound_test in list_test
    result = byte_test in bytearray_test
    result = int_test in intarray_test
    result = long_test in longarray_test

function demo:score:
    result = int_score_test in list_test
    result = int_score_test in bytearray_test
    result = int_score_test in intarray_test
    result = int_score_test in longarray_test
