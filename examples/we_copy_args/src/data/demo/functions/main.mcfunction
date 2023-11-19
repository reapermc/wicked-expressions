from wicked_expressions:api import Scoreboard, Data, Var, StaticVar, 
                                   qInt, Float, Copy, StaticCopy, copy_args

def test_normal_args():
    function demo:normal_args:
        @copy_args
        def my_func(x: Copy[qInt],
                    y: Copy[qInt],
                    z: Copy[Scoreboard],
                    xd: Copy[Data],
                    xda: Copy[Data],
                ):
            ...

        buzz = Var(qInt, 42)
        fizz = StaticVar(qInt, 10)
        bazz = Scoreboard('bazz')['$bazz']
        fazz = Data.storage('fazz:fazz').fazz

        raw f"# <func run>"
        my_func(buzz, fizz, bazz, fazz, fazz)
        raw f"# <func run>"
        my_func(buzz, fizz, bazz, fazz, fazz)

def test_static_args():
    function demo:static_args:
        @copy_args
        def my_func(x: StaticCopy[qInt],
                    y: StaticCopy[qInt],
                    z: StaticCopy[Scoreboard],
                    xd: StaticCopy[Data],
                    xda: StaticCopy[Data],
                ):
            ...

        buzz = Var(qInt, 42)
        fizz = StaticVar(qInt, 10)
        bazz = Scoreboard('bazz')['$bazz']
        fazz = Data.storage('fazz:fazz').fazz

        raw f"# <func run>"
        my_func(buzz, fizz, bazz, fazz, fazz)
        raw f"# <func run>"
        my_func(buzz, fizz, bazz, fazz, fazz)

def test_normal_kwargs():
    function demo:normal_kwargs:
        @copy_args
        def my_func(x: Copy[qInt],
                    y: Copy[qInt],
                    z: Copy[Scoreboard],
                    xd: Copy[Data],
                    xda: Copy[Data],
                ):
            ...

        buzz = Var(qInt, 42)
        fizz = StaticVar(qInt, 10)
        bazz = Scoreboard('bazz')['$bazz']
        fazz = Data.storage('fazz:fazz').fazz

        raw f"# <func run>"
        my_func(x=buzz,
                y=fizz,
                z=bazz,
                xd=fazz,
                xda=fazz,
               )
        raw f"# <func run>"
        my_func(x=buzz,
                y=fizz,
                z=bazz,
                xd=fazz,
                xda=fazz,
               )

def test_static_kwargs():
    function demo:static_kwargs:
        @copy_args
        def my_func(x: StaticCopy[qInt],
                    y: StaticCopy[qInt],
                    z: StaticCopy[Scoreboard],
                    xd: StaticCopy[Data],
                    xda: StaticCopy[Data],
                ):
            ...

        buzz = Var(qInt, 42)
        fizz = StaticVar(qInt, 10)
        bazz = Scoreboard('bazz')['$bazz']
        fazz = Data.storage('fazz:fazz').fazz

        raw f"# <func run>"
        my_func(x=buzz,
                y=fizz,
                z=bazz,
                xd=fazz,
                xda=fazz,
               )
        raw f"# <func run>"
        my_func(x=buzz,
                y=fizz,
                z=bazz,
                xd=fazz,
                xda=fazz,
               )

test_normal_args()
test_static_args()
test_normal_kwargs()
test_static_kwargs()
