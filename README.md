### Пререквизиты

- git
- python 3.12
- uv
- just (опционально)

### Клонирование

```bash
git clone https://github.com/kir-sth/joom.git
cd joom
```

### Установка зависимостей

```bash
uv sync
uv pip install -e .
uv run python -m ipykernel install --user --name joom
```

или

```bash
just setup
```

### Запуск

```bash
uv run jupyter notebook
```

Открыть в браузере `playground.ipynb`, выбрать ядро `joom` и выполнить ячейки
