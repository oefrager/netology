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
Создаем файл [compose.yaml](compose.yaml)




Запускаем проект локально с помощью ```docker compose up```, проверяем результат командой ```curl -L http://127.0.0.1:8090```.

Подключаемся к БД mysql: ```docker exec -ti db mysql -uroot -p```

![изображение](https://github.com/user-attachments/assets/ecdf7fca-9779-4f95-919c-9465d610f651)

## Задача 4
Создаем Yandex Cloud ВМ, содаем [файл](clone.sh) автоматизации

Делаем [fork](https://github.com/oefrager/shvirtd-example-python.git) и проверяем запросы:

![изображение](https://github.com/user-attachments/assets/8439fe7a-74ae-46a8-84fe-eee4c5e6b1d4)

![изображение](https://github.com/user-attachments/assets/589d9aa7-347b-413e-8a09-ee96c08a0ddc)


## Задача 5 (*)
Пишем скрипт, который произведет резервное копирование БД mysql в директорию "/opt/backup":
с помощью запуска в сети "backend" контейнера из образа schnitzler/mysqldump при помощи docker run ... команды. Подсказка: "документация образа."
    Протестируйте ручной запуск
    Настройте выполнение скрипта раз в 1 минуту через cron, crontab или systemctl timer. Придумайте способ не светить логин/пароль в git!!
    Предоставьте скрипт, cron-task и скриншот с несколькими резервными копиями в "/opt/backup"


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
## Задача 7 (***)
