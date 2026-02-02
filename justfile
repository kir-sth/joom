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
    rm -rf {{src_dir}}/**/.ipynb_checkpoints
    {{pre-commit}} clean
    {{ruff}} clean

# setup environment for dev
setup-dev:
    uv sync --group dev
    {{pre-commit}} autoupdate
    {{pre-commit}} install

# setup environment for notebook
setup-notebook:
    uv sync --group notebook

# start jupyter lab in browser
lab: setup-notebook
    uv run jupyter lab {{src_dir}}/notebooks
