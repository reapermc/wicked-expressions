from wicked_expressions:api import Scoreboard

scb = Scoreboard('foo')

x = scb['.x']

function demo:eq:
    if x == 10:
        say yes :3
    else:
        say no :<

function demo:ne:
    if x != 10:
        say yes :3
    else:
        say no :<

function demo:lt:
    if x < 10:
        say yes :3
    else:
        say no :<

function demo:gt:
    if x > 10:
        say yes :3
    else:
        say no :<

function demo:le:
    if x <= 10:
        say yes :3
    else:
        say no :<

function demo:ge:
    if x >= 10:
        say yes :3
    else:
        say no :<
