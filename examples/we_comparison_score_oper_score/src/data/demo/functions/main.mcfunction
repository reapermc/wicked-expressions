from wicked_expressions:api import Scoreboard

scb = Scoreboard('foo')

x = scb['.x']
y = scb['.y']

function demo:eq:
    if x == y:
        say yes :3
    else:
        say no :<

function demo:ne:
    if x != y:
        say yes :3
    else:
        say no :<

function demo:lt:
    if x < y:
        say yes :3
    else:
        say no :<

function demo:gt:
    if x > y:
        say yes :3
    else:
        say no :<

function demo:le:
    if x <= y:
        say yes :3
    else:
        say no :<

function demo:ge:
    if x >= y:
        say yes :3
    else:
        say no :<
