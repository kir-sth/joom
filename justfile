src_dir := "."

pre-commit := "uv run pre-commit"
ruff := "uv run ruff"


# list available recipes
default:
    just --list

# linter
lint:
    {{ruff}} check --fix {{src_dir}}/

# formatter
format:
    {{ruff}} format {{src_dir}}/

# linter and formatter
check: lint format

# cleaning cache
clean:
    rm -rf {{src_dir}}/__pycache__ {{src_dir}}/**/__pycache__
    {{pre-commit}} clean
    {{ruff}} clean

# upgrade dependencies and rebuild the jupyter notebook kernel
setup:
    uv sync --upgrade
    uv pip install -e .
    uv run python -m ipykernel install --user --name joom
    uv run jupyter kernelspec list

# upgrade dependencies and rebuild the pre-commit hooks
setup-pre-commit:
    uv sync --upgrade
    {{pre-commit}} autoupdate
    {{pre-commit}} install
