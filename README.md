## Пререквизиты
- git
- python 3.12
- uv
- just

## Клонирование
```bash
git clone https://github.com/kir-sth/joom.git
cd joom
```

## Структура проекта

- `notebooks/dpx_shutdown_impact.ipynb` — основной ноутбук с анализом

- `notes/task.md` — формулировка задания

- `notes/end-to-end.md` — описание логистического процесса и данных

## Установка окружения

### Для разработки:

```bash
just setup-dev
```

### Для работы с ноутбуком:

```bash
just setup-notebook
```

## Запуск ноутбука

```bash
just lab
```
