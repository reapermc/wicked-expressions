from wicked_expressions:api import Scoreboard

# tests for the loader
#
# loader initializes internal
# components for the lib

scb = Scoreboard('foo')
scb = Scoreboard('foo')
scb = Scoreboard('bar')
x = scb['$y']

if x == x:
    say hi

if x == x:
    say hi2
