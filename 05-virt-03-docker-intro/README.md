## Задача 1
Союираем свой образ и отправляем на dockerhub-репозитории c tag 1.0.0.
Доступен по ссылке: (https://hub.docker.com/repository/docker/oefrager/custom-nginx/general)


## Задача 2
Провверяем работоспособност созданного образа:

![Снимок экрана от 2024-12-27 16-33-53](https://github.com/user-attachments/assets/c73b8cdc-8601-4848-abd2-2fc60834fc03)

## Задача 3
Подключаемся к стандартному потоку ввода/вывода/ошибок контейнера:

![Снимок экрана от 2024-12-27 17-25-59](https://github.com/user-attachments/assets/a19e4dd1-b28b-43a8-9854-5febf1fd9520)
При нажатии Ctrl-C происходит остановка nginx, так-как мы подключились к его выводу.

Меняем порт "listen 80" на "listen 81, проверяем:

![Снимок экрана от 2024-12-27 17-28-57](https://github.com/user-attachments/assets/b1cdbc7b-d263-4bb2-9439-a9a60ec2158f)

Удаляем не останавливая с помощью команды: docker rm -f custom-nginx-t2

## Задача 4

## Задача 5
