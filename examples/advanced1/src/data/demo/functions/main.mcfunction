from wicked_expressions:api import Scoreboard, Data

score_0 = Scoreboard('test_objective')['$score_0']
data_0 = Data.storage('my_library:internal')['data_0']

score_0 = 123
data_0 = 30

if score_0:
    say score_0 has a value
else:
    say score_0 has no value

if data_0 > score_0:
    say data_0 is bigger than 30
elif data_0 == score_0:
    say data_0 is equal to score_0
