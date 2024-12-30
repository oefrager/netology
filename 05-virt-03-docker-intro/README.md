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
Запускаем образы и примонтируем папки к хостовой машине:

![Снимок экрана от 2024-12-29 22-58-10](https://github.com/user-attachments/assets/bf0217a3-4762-4702-b3b7-3908407546b6)


## Задача 5
Docker запустил compose.yaml, т.к. в данном случае мы использовали docker с командой compose, а не docker-compose.

"compose.yaml":

```
include:
  - docker-compose.yaml

version: "3"
services:
  portainer:
    network_mode: host
    image: portainer/portainer-ce:latest
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
```
![Снимок экрана от 2024-12-30 10-26-26](https://github.com/user-attachments/assets/fd850601-9237-4360-90f0-ce7c750642eb)

Запускаем portainer:

![Снимок экрана от 2024-12-30 10-26-26](https://github.com/user-attachments/assets/57a0c7f3-3d93-453e-80fe-a9388ee1fdeb)

Работа с portainer:

![Снимок экрана от 2024-12-30 10-15-23](https://github.com/user-attachments/assets/ae5fa4a0-7d18-475d-bc3d-7548450b93e0)
![Снимок экрана от 2024-12-30 10-13-50](https://github.com/user-attachments/assets/77c72f80-38b3-4bee-b53d-5b75807bc4f5)
![Снимок экрана от 2024-12-30 10-24-23](https://github.com/user-attachments/assets/a5550292-9a50-4e5f-a81d-06b1a1f371fc)
