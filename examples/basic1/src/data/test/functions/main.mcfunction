from wicked_expressions:api import Scoreboard, this

x = Scoreboard('foo')['$x']

as @e[type=zombie]:
    with this.Health.store(type='float'):
        x.get()