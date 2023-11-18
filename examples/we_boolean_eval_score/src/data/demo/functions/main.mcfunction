from wicked_expressions:api import Var, qInt, Bool

x = Var(Bool)
y = Var(qInt)

if x:
    say "x is true"
if not x:
    say "x is false"

if y:
    say "y is true"
if not y:
    say "y is false"
