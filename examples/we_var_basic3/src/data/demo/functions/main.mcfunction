from wicked_expressions:api import Var, Bool



x = Var(Bool)


function ./a:
    if x:
        say TRUE
    else:
        say FALSE

function ./b:
    if x == 1:
        say TRUE
    else:
        say FALSE

function ./c:
    if x == True:
        say TRUE
    else:
        say FALSE



function ./inv_a:
    if not x:
        say TRUE
    else:
        say FALSE

function ./inv_b:
    if not x == 1:
        say TRUE
    else:
        say FALSE

function ./inv_c:
    if not x == True:
        say TRUE
    else:
        say FALSE
