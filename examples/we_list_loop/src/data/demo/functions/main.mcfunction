from wicked_expressions:api import Var, List, IntArray, ByteArray, LongArray, qInt, Int, loop_break, loop_continue, DataSource

macro_storage = DataSource.create("storage", "demo:storage")
list_test = Var(List)
list_test = [0, 1, 2, 3]

function demo:break_continue:
    for item in list_test: # No .iterator(), uses the default configuration
        if item == 0:
            loop_continue

        if item == 2:
            loop_break

        tellraw var item

function demo:reversed:
    for item in list_test.iterator(reversed=True):
        tellraw var item

function demo:no_early_return:
    for item in list_test.iterator(allow_early_return=False):
        tellraw var item

function demo:with_macro_raw:
    for item in list_test.iterator(macro_arguments={"key": "val"}):
        tellraw var item

function demo:with_macro_storage:
    for item in list_test.iterator(macro_arguments=macro_storage):
        tellraw var item

function demo:with_macro_storage_path:
    for item in list_test.iterator(macro_arguments=macro_storage.id):
        tellraw var item