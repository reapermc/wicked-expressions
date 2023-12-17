from wicked_expressions:api import Var, List, Int, Byte, Long, qInt, Bool, IntArray, ByteArray, LongArray, Compound, String, len

list_test      = Var(List)
bytearray_test = Var(ByteArray)
intarray_test  = Var(IntArray)
longarray_test = Var(LongArray)
compound_test  = Var(Compound)
string_test    = Var(String)

result_data = Var(Int)
result_score = Var(qInt)

list_normal = [0, 1, 2]
list_normal_length = len(list_normal)
if list_normal_length == 3:
    say success

function demo:score:
    result_score = len(list_test)
    result_score = len(bytearray_test)
    result_score = len(intarray_test)
    result_score = len(longarray_test)
    result_score = len(compound_test)
    result_score = len(string_test)

function demo:data:
    result_data = len(list_test)
    result_data = len(bytearray_test)
    result_data = len(intarray_test)
    result_data = len(longarray_test)
    result_data = len(compound_test)
    result_data = len(string_test)
