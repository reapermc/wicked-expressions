__version__ = "0.2.8"


from beet import Context
from beet.contrib.load import load


def beet_default(ctx: Context):
    ctx.require(
        load(
            data_pack={
                "data/fixme/modules": "@fixme/modules",
            },
        ),
    )
