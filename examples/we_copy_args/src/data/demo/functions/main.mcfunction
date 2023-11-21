from wicked_expressions:api import Var, qInt, Byte, ExpressionNode,
                                   copy_args, Copy, StaticCopy, this,
                                   ScoreSource, DataSource, qIntSource,
                                   IntSource, Inherit

@copy_args
def inherit_type_from_arg(
    x: Copy[Inherit],
    y: Copy[IntSource],
    z: Copy[ScoreSource],
    asd: Copy[DataSource],
):    
    tellraw @s x
    tellraw @s y
    tellraw @s z
    tellraw @s asd

@copy_args
def random(
    min: int | StaticCopy[qIntSource],
    max: StaticCopy[qIntSource] | int,
):
    tellraw @s min
    tellraw @s max

    return "some return value here"



x = Var(qInt, 0)
y = Var(qInt, 100)
z = Var(qInt, 42)
asd = Var(Byte, 8)

inherit_type_from_arg(x, y, z, asd)

function ./example2:
    print(random(x, y))
    print(random(x, y))
