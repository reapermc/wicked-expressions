from wicked_expressions:api import
    Var,
    Bool,
    Scoreboard,
    Data



foo = Scoreboard('test')['$test']
bar = Data.storage('test:test')['test']


x = Var(Bool)
# x = 10          # auto convered to 1

x = foo
x = bar

x = True

if x:
    say no
else: 
    say yes


print(x)














