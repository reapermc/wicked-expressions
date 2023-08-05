from wicked_expressions:api import Data, Var, StaticVar, Int, Bool, Float, ExpressionNode


class Config:
    LIBRARY_NAME = 'testtesttest'
    ROOT = 'reapermc:testtesttest'
    ROOT_LOCAL = generate_path('reapermc/testtesttest')
    ROOT_TAG = 'reapermc.testtesttest'


_WORKING_DIR = f"{Config.ROOT}/math"

def binary_progression(size: int, reversed: bool = False):
    out = []

    for i in range(1,size+1):
        v = 1 * 2**(i-1)
        out.append(v)

    if reversed:
        out.reverse()

    return out

def atan2(x_: int | float | ExpressionNode, y_: int | float | ExpressionNode):
    """Im not sure how this would look in python"""
    x = StaticVar(Int)
    y = StaticVar(Int)
    quadrant_x = StaticVar(Int)
    quadrant_y = StaticVar(Int)
    temp_0 = StaticVar(Int)
    temp_1 = StaticVar(Int)
    temp_2 = StaticVar(Int)
    temp_3 = StaticVar(Int)
    temp_4 = StaticVar(Int)
    input_swap = StaticVar(Bool)
    temp_output = StaticVar(Int)
    output = Var(Int)

    run_path = f"{_WORKING_DIR}/atan2/run"

    x = x_
    y = y_

    execute function run_path:
        quadrant_x = 1
        if x < 0:
            quadrant_x = -1
            x *= -1
