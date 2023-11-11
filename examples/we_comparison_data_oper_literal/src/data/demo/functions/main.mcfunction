from wicked_expressions:api import Scoreboard, Data
from nbtlib import Double

scb = Scoreboard('foo')
stge = Data.storage('demo:foo')

x = stge['x']
y = scb['.y']

function demo:eq:
    if x == Double(10.0):
        say yes :3
    else:
        say no :<

function demo:ne:
    if x != 10:
        say yes :3
    else:
        say no :<

# # # # # # # # # # # # # # #
# ! ! ! NOT SUPPORTED ! ! ! #
# # # # # # # # # # # # # # #

# function demo:lt:
#     if x < 10:
#         say yes :3
#     else:
#         say no :<

# function demo:gt:
#     if x > 10:
#         say yes :3
#     else:
#         say no :<

# function demo:le:
#     if x <= 10:
#         say yes :3
#     else:
#         say no :<

# function demo:ge:
#     if x >= 10:
#         say yes :3
#     else:
#         say no :<
