from wicked_expressions:api import Scoreboard, Data


objective_0 = Scoreboard('objective_0')
storage_0 = Data.storage('test:storage_0')
score_0 = objective_0['$score_0']
data_0 = storage_0['data_0']
entitydata_0 = Data.entity('@s')['nbt_path']



# maybe in the future lol
# score_0 = score_0.exists()


if score_0.exists():
    say True
else:
    say False

if data_0.exists():
    say True
else:
    say False

