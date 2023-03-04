# from bolt_expressions import Scoreboard
from wicked_expressions:api import Scoreboard

smithed_dmg = Scoreboard("smithed.dmg")
dmg = smithed_dmg["dmg"]
toughness = smithed_dmg["toughness"]
armor = smithed_dmg["armor"]

atf = (10 * armor - (400 * dmg / (80 + 10 * toughness)))
maxxed = max((10 * armor) / 5, atf)
dmg *= (250 - (min(200, maxxed))) / 25
