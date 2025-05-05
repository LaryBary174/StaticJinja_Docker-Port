# Docker Port для StaticJinjaPlus
Докерфайлы для создания образов проекта [StaticJinja](https://github.com/MrDave/StaticJinjaPlus)

## Как пользоваться
Должен быть установлен [Docker](https://docs.docker.com/engine/install/) в вашей ОС

## Создание образов
Для создания образов с последней версией необходимо перейти в директорию с докерфайлами и прописать команду:
```
$ docker build -t staticjinja-plus:latest -f Dockerfile .

$ docker build -t staticjinja-plus:latest -f Dockerfile-slim .

```
где Dockerfile создает на базе Ubuntu 24.04, а Dockerfile-slim на базе python:3.11-slim


Для создания образа версии 0.1.0 :
```
$ docker build -t staticjinja-plus:0.1.0 -f Dockerfile-version --build-arg VERSION=0.1.0 .

$ docker build -t staticjinja-plus:0.1.0 -f Dockerfile-slim-version --build-arg VERSION=0.1.0 .

```

Для создания образа версии 0.1.1 :

```
$ docker build -t staticjinja-plus:0.1.1 -f Dockerfile-version --build-arg VERSION=0.1.1 .

$ docker build -t staticjinja-plus:0.1.1 -f Dockerfile-slim-version --build-arg VERSION=0.1.1 .
```

### Цель проекта 

Код написан в образовательных целях на онлайн-курсе для веб-разработчиков [Devman](https://dvmn.org).