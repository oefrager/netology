## Задача 1

Создайте ваш первый Docker Swarm-кластер в Яндекс Облаке. Документация swarm: https://docs.docker.com/engine/reference/commandline/swarm_init/

    Создайте 3 облачные виртуальные машины в одной сети.

    Установите docker на каждую ВМ.

    Создайте swarm-кластер из 1 мастера и 2-х рабочих нод.

    Проверьте список нод командой:

docker node ls

## Задача 2 (*) (необязательное задание *).

    Задеплойте ваш python-fork из предыдущего ДЗ(05-virt-04-docker-in-practice) в получившийся кластер.
    Удалите стенд.

## Задача 3 (*)

    Если вы уже знакомы с terraform и ansible - повторите практику по примеру лекции "Развертывание стека микросервисов в Docker Swarm кластере". Попробуйте улучшить пайплайн, запустив ansible через terraform синамическим инвентарем.
    Проверьте доступность grafana.
    Иначе вернитесь к выполнению задания после прохождения модулей "terraform" и "ansible".
