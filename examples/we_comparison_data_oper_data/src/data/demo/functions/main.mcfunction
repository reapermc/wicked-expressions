from wicked_expressions:api import Data

stge = Data.storage('demo:foo')

x = stge['x']
y = stge['y']

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

# # # # # # # # # # # # # # #
# ! ! ! NOT SUPPORTED ! ! ! #
# # # # # # # # # # # # # # #

# function demo:lt:
#     if x < y:
#         say yes :3
#     else:
#         say no :<

# function demo:gt:
#     if x > y:
#         say yes :3
#     else:
#         say no :<

# function demo:le:
#     if x <= y:
#         say yes :3
#     else:
#         say no :<

# function demo:ge:
#     if x >= y:
#         say yes :3
#     else:
#         say no :<
