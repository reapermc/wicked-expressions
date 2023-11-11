from wicked_expressions:api import Var, Float, Double

foo = Var(Float, 3.14159)
bar = Var(Double, 10.3)

raw f" "

if not foo == 3.14159:
    tellraw @a "that's pi!"
else:
    tellraw @a "not pi!"

raw f" "

if bar == 3.3:
    tellraw @a "a"
elif bar == 10.3:
    tellraw @a "b"
else:
    tellraw @a "c"
