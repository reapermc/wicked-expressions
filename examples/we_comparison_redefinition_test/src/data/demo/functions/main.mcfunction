from wicked_expressions:api import Var, Bool, StaticVar, qInt, Byte

x = Var(qInt, 42)
y = Var(Byte, 8)

def test():
    execute function demo:static_path:
        _ = StaticVar(Bool, 3)

        if x == 42:
            say foo
            say foo2
        else:
            say bar
            say bar2

        if x == 42:
            say foo
            say foo2
        else:
            say bar
            say bar2

        if y.exists():
            say foo
            say foo2
        else:
            say bar

test()
test()



