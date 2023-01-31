from wicked_expressions:api import Scoreboard, Data


x = Scoreboard('myobjectivename', 'dummy')
y = Scoreboard('anotherone')
z = Scoreboard('anotherone')['$testplayer']

a = Data.storage('test:test')['somenbtpath']


x['$foo'] = 10
y['$wefwef'] = 124

z = x['$foo'] * 1000 

z = 1234
z /= 345

if not z == 69:
    say true
else:
    say false

if z:
    say exists
else:
    say doesnt exist


a = 1234
a += 10

if not a:
    say doesnt exist
else:
    say exists

if a == 69:
    say true
else:
    say false







