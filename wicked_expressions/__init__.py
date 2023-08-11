__version__ = "0.8.4"


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
