from wicked_expressions:api import
    Var,
    Byte,
    Scoreboard


x = Var(Byte)
y = Scoreboard('test')['$test']

x = y

if x == y:
    say hello!













