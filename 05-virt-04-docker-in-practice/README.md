## Задача 0
Проверяем в системе ```docker-compose``` и ```docker compose```:

![изображение](https://github.com/user-attachments/assets/2ca1829e-acaa-450d-9a9a-09e588d6e400)


## Задача 1
Создаем в своем github  fork https://github.com/netology-code/shvirtd-example-python/blob/main/README.md


Создаем файл [Dockerfile.python](Dockerfile.python)

Создаем контейнер командой:
```sudo docker build -f Dockerfile.python -t oefrager_docker .```

![изображение](https://github.com/user-attachments/assets/1abf9418-9a24-47e6-8482-430a571f6df2)


## Задача 2 (*)
Создаем в yandex cloud container registry с именем "test" и заливаем образ:

![изображение](https://github.com/user-attachments/assets/2d42cbf7-c676-49ba-8f74-4c9c7aa342da)

Сканируем на уязвимости:

![изображение](https://github.com/user-attachments/assets/66d8c446-dca3-4abb-9dca-e15dcff03a51)

подробнее:
![изображение](https://github.com/user-attachments/assets/4ab1f6bb-d2a4-4389-80b1-d8cae89eccf5)

## Задача 3
QQQ


## Задача 4
QQQ


## Задача 5 (*)
QQQ


## Задача 6
Получаем файл ```/bin/terraform``` из образа hashicorp/terraform:latest с поиощью ```docker cp```:

 ```#docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive hashicorp/terraform:latest```
 
![изображение](https://github.com/user-attachments/assets/40c0c970-a71f-4429-8cd4-c9b5125ea11f)

По полученному имени нахим в архиве и распаковываем:

![изображение](https://github.com/user-attachments/assets/4c05d63f-c3ef-467c-92a7-5c5a81d5e989)



## Задача 6.1
Получаем файл ```/bin/terraform``` из образа hashicorp/terraform:latest с поиощью ```docker cp```:

![изображение](https://github.com/user-attachments/assets/dd0d2d68-2ac9-4e1b-ba9c-0276cf6ed9e1)


## Задача 6.2 (**)
QQQ


## Задача 7 (***)
QQQ
