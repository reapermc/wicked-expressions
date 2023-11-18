__version__ = "1.0.5"


from beet import Context
from beet.contrib.load import load


def beet_default(ctx: Context):
    ctx.require(
        load(
            data_pack={
                "data/wicked_expressions/modules": "@wicked_expressions/modules"
            },
        ),
        "bolt_expressions.plugin",
    )
