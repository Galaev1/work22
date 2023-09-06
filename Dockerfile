#Используем базовый образ python
FROM python:3.11

#Установливаем рабочую директорию в контейнере
WORKDIR /code

#Копируем зависимости контейнера
COPY ./requirements.txt .

#Устанавливаем зависимости
RUN pip install -r requirements.txt

#Копируем код приложения в контейнер
COPY . .

#выполняет команду во время запуска контейнера.
CMD ["python", "main.py","runserver"]