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

# linter + formatter
check: lint format

# cleaning cache
clean:
    rm -rf {{src_dir}}/__pycache__ {{src_dir}}/**/__pycache__
    {{pre-commit}} clean
    {{ruff}} clean

# install dependencies
setup:
    uv sync
    uv run jupyter kernelspec list

# install dependencies and rebuild the pre-commit hooks
setup-pre-commit:
    uv sync
    {{pre-commit}} autoupdate
    {{pre-commit}} install
