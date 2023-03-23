from wicked_expressions:api import Var, Short, Data, Scoreboard, Byte

z = Var(Byte)
foo = Var(Short)

x = Scoreboard('test')['$test']
bar = Data.storage('test:test')['test']


foo = 10
print(foo)

bar = foo


bar = x
x = bar



z = foo
foo = z

