from wicked_expressions:api import Scoreboard, Data 

foo = Scoreboard('foo')['$foo']
bar = Data.storage('bar').bar

if foo.exists():
    say foo exists
else:
    say foo is unassigned

if bar.exists():
    say bar exists
else:
    say bar is unassigned
