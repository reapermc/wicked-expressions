from wicked_expressions:api import Scoreboard

scb = Scoreboard('foo')['$bar']

if scb.exists():
    say 'exists'
else:
    say 'does not exist'

