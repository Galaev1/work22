Работа с Dockerfile

Dockerfile — это конфигурационный файл, в котором описаны инструкции, которые будут применены при сборке Docker-образа и запуске контейнера. Dockerfile создается в корневой директории проекта и не имеет расширения.

Синтаксис Dockerfile близок к синтаксису конфигурационных файлов .ini. На каждую строчку приходится одна инструкция. Инструкции пишутся капсом, а их значения отделяются пробелом.

Dockerfile имеет следующую логику заполнения:

1.Первой инструкцией всегда идёт FROM с указанием родительского образа. Например, FROM python:3.11.

2.Инструкция WORKDIR устанавливает рабочий каталог контейнера. Например, WORKDIR /code. Последующие команды RUN, CMD наследуют привязку WORKDIR.

3.Завершающей инструкцией всегда идёт CMD. Например, CMD ["python", "main.py"]. CMD наследует привязку к WORKDIR, поэтому web_interface.py будет запущен из папки /code.


Чтобы собрать Docker-образ, сохраним данный Dockerfile в директории с вашим проектом и выполним команду в терминале:
docker build -t my-python-app .
Здесь -t my-python-app задает имя образа, а . указывает на текущую директорию с Dockerfile.
После успешной сборки образа вы можете запустить контейнер с помощью команды:
docker run my-python-app
Таким образом вы запустите ваше Python-приложение в контейнере.