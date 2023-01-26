# bolt-library-starter

[![GitHub Actions](https://github.com/mcbeet/bolt-library-starter/workflows/CI/badge.svg)](https://github.com/mcbeet/bolt-library-starter/actions)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)
[![Discord](https://img.shields.io/discord/900530660677156924?color=7289DA&label=discord&logo=discord&logoColor=fff)](https://discord.gg/98MdSGMm8j)

> Starter template for a bolt library package with regression testing.

## Features

- Packaging and dependency management with [`poetry`](https://python-poetry.org/)
- Default [`beet`](https://github.com/mcbeet/beet) plugin that mounts a library of [`bolt`](https://github.com/mcbeet/bolt) modules
- Regression testing with [`pytest`](https://docs.pytest.org/en/stable/), [`pytest-insta`](https://github.com/vberlier/pytest-insta), and [`lectern`](https://github.com/mcbeet/lectern)
- Continuous integration and automatic releases with [`python-semantic-release`](https://python-semantic-release.readthedocs.io/en/latest/)
- Smart template initialization using a [one-off workflow](https://github.com/mcbeet/bolt-library-starter/blob/main/.github/workflows/template.yml)

## Get started

Create a new repository from this template by clicking the ["Use this template"](https://github.com/mcbeet/bolt-library-starter/generate) button above. The one-off workflow should kick in and your new repository will be initialized with the correct name and details.

You can also clone or download this repository manually, and rename the package and substitute all the `fixme` by hand. Don't forget to reset the version number and remove the one-off workflow in `.github/workflows/template.yml`.

## Conventional commits

The main workflow in `.github/workflows/main.yml` will take care of version bumps and releases automatically based on the [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) specification. This means that all commit messages must be prefixed with a type, such as `feat:`, `fix:`, `docs:`, etc. The type determines the version bump that will be applied to the package.

This will save you hours of fiddling with version numbers and changelogs.

To disable this feature, remove the "Release" step at the end of the main workflow. Then uninstall `python-semantic-release` with `poetry remove -Gdev python-semantic-release` and remove the `[tool.semantic_release]` section in `pyproject.toml`.

## Type checking

This template doesn't include a local static type checker, but if you use [Visual Studio Code](https://code.visualstudio.com/) the editor will directly report strong diagnostics thanks to the `typeCheckingMode = "strict"` option in `pyproject.toml`.

If you're more familiar with static typing in Python, you're encouraged to install [Pyright](https://github.com/microsoft/pyright) in the project to pin it to a specific version and run it after `pytest` in the main workflow.

## Publish on PyPI

To enable automatic releases on PyPI, [create a PyPI API token](https://pypi.org/manage/account/token/) and add it to your repository secrets as `PYPI_TOKEN`. Next, add the token as an environment variable at the end of the main workflow in `.github/workflows/main.yml`.

```diff
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
+         PYPI_TOKEN: ${{ secrets.PYPI_TOKEN }}
```

Finally, activate PyPI upload in the `python-semantic-release` configuration in `pyproject.toml` by removing or setting the `upload_to_repository` option to `true`.

---

License - [MIT](https://github.com/mcbeet/bolt-library-starter/blob/main/LICENSE)
