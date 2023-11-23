from wicked_expressions:api import copy_args, Var, StaticVar, qInt, ExpressionNode, ExprOnly, Scoreboard, this

@copy_args(min=StaticVar[qInt], max=StaticVar[qInt],)
def random(min: int | ExpressionNode, max: int | ExpressionNode, a):
    tellraw @s min
    tellraw @s max
    tellraw @s a

@copy_args(amount=ExprOnly(StaticVar[qInt]))
def set_xp_level(amount: int | ExpressionNode):
    tellraw @s amount

x = Var(qInt, 100)

function ./test:
    random(0, x, 'a')

function ./test1:
    random(min=0, max=x, a='a')

function ./test2:
    set_xp_level(100)

function ./test3:
    set_xp_level(x)

function ./test4:
    set_xp_level(amount=x)

function ./test5:
    set_xp_level(this.Health)
