## Задача 1

Установливаем VirtualBox, Vagrant, Packer, настраиваем уandex cloud cli:

![изображение](https://github.com/user-attachments/assets/57bdf2a2-60d9-46ba-bd12-74841e237d5c)


## Задача 2

Создаем виртуальную машину Virtualbox с помощью Vagrant и Vagrantfile и проверяем наличие Docker:

![изображение](https://github.com/user-attachments/assets/f8def894-e616-452b-b813-e1672dfa5627)


## Задача 3

Создаем скрипт для установки docker, htop и tmux [install-docker.sh](https://github.com/oefrager/netology/edit/main/05-virt-02-iaac/linstall-docker.sh) .

Проверяем наличие образа в yandex_cloud:

![изображение](https://github.com/user-attachments/assets/a349bffb-eb0e-4ce4-8360-449dd3c66d7d)

![изображение](https://github.com/user-attachments/assets/183658bb-e0a2-485d-b744-deab62909003)



    Создайте новую ВМ (минимальные параметры) в облаке, используя данный образ.
    Подключитесь по ssh и убедитесь в наличии установленного docker.
    Удалите ВМ и образ.
    ВНИМАНИЕ! Никогда не выкладываете oauth token от облака в git-репозиторий! Утечка секретного токена может привести к финансовым потерям. После выполнения задания обязательно удалите секретные данные из файла mydebian.json и mydebian.json.pkr.hcl. (замените содержимое токена на "ххххх")
    В качестве ответа на задание загрузите результирующий файл в ваш ЛК.

