from wicked_expressions:api import
    Var,
    StaticVar,
    Double,
    Int,
    List,
    Float



x = Var(Int)
y = Var(Int)


def staticvar_test():
    z = StaticVar(Int)
    print(z)

staticvar_test()
staticvar_test()

print(x)
print(y)





a = Var(Double)
b = Var(Double)


def staticvar_test2():
    c = StaticVar(Double)
    print(c)

staticvar_test2()
staticvar_test2()

print(a)
print(b)



















