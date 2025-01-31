### Задание 1
2. Создаем сервисный аккаунт и ключ.
 
 ![изображение](https://github.com/user-attachments/assets/2b60afec-3a2f-4537-b3c3-f8733fec6e31)

3. Указываем ssh-public в переменную **vms_ssh_root_key**:  ``` default     = "~/.ssh/id_ed25519.pub" ```
4. Запускаем код и получаем ВМ:

 ![изображение](https://github.com/user-attachments/assets/1630a0cd-6802-4ca4-b8e4-b89d2000478d)

Исправлены строки:
  ```platform_id = "standard-v3"```. Синтаксическая ошибка, версии могут быть только v1, v2 и v3.
  ```Cores = 2```  допустимо только 2
  ```core_fraction = 20``` доступно 20, 50, 100
   
5. Подключаемся к консоли ВМ через ssh и выполните команду ``` curl ifconfig.me```.

 ![изображение](https://github.com/user-attachments/assets/6a82add1-8aa6-4824-b4f7-1f8201660c0f)

6. Так как ВМ не загружена работой, параметры ```preemptible = true``` (прерываемая ВМ) и ```core_fraction=5``` (загрузка процессора) помогают экономить  ресурсы.



### Задание 2

1. Меняем все хардкод-**значения** для ресурсов **yandex_compute_image** и **yandex_compute_instance** на переменные.
[main.tf](main.tf), [variables.tf](variables.tf)

3. Проверяем ```terraform plan```.

   ![изображение](https://github.com/user-attachments/assets/51c803df-791c-4731-8c72-6484d334009f)



### Задание 3

1. Создаем файл [vms_platform.tf](vms_platform.tf).
2. Правим [main.tf](main.tf.db).
3. Применяем изменения и получаем:

![изображение](https://github.com/user-attachments/assets/b01dcb1c-1dd9-4b36-93fd-839dd7c04979)


### Задание 4

1. Создаем файл [outputs.tf](outputs.tf) для вывода: instance_name, external_ip, fqdn из каждой ВМ

![изображение](https://github.com/user-attachments/assets/74c53387-1427-43b7-b526-ace33ba04b35)


### Задание 5

1. Создаем файл [locals.tf](locals.tf) с параметрами ВМ.
3. Применяем изменения и получаем:

![изображение](https://github.com/user-attachments/assets/1ca5b0f0-83b2-456f-a08b-e290f871bdbe)


### Задание 6

1. Объединяем переменную в ```vms_resources``` и  внутри неё конфиги обеих ВМ в виде вложенного map(object).
variebles.tf:

   ![изображение](https://github.com/user-attachments/assets/b084aa3a-230d-4cfd-beb4-5593df3a02a8)

main.tf:

   ![изображение](https://github.com/user-attachments/assets/738b2a8e-eaa3-492b-9d5e-d1c715d87cb6)

  
5. Найдите и закоментируйте все, более не используемые переменные проекта.
6. Применяем изменения и получаем:

![изображение](https://github.com/user-attachments/assets/59f1466f-dac6-4432-894b-c2d53f4667f4)

------

### Задание 7*

Изучите содержимое файла console.tf. Откройте terraform console, выполните следующие задания: 

1. Напишите, какой командой можно отобразить **второй** элемент списка test_list.
2. Найдите длину списка test_list с помощью функции length(<имя переменной>).
3. Напишите, какой командой можно отобразить значение ключа admin из map test_map.
4. Напишите interpolation-выражение, результатом которого будет: "John is admin for production server based on OS ubuntu-20-04 with X vcpu, Y ram and Z virtual disks", используйте данные из переменных test_list, test_map, servers и функцию length() для подстановки значений.

**Примечание**: если не догадаетесь как вычленить слово "admin", погуглите: "terraform get keys of map"

В качестве решения предоставьте необходимые команды и их вывод.


### Задание 8*
1. Напишите и проверьте переменную test и полное описание ее type в соответствии со значением из terraform.tfvars:
```
test = [
  {
    "dev1" = [
      "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117",
      "10.0.1.7",
    ]
  },
  {
    "dev2" = [
      "ssh -o 'StrictHostKeyChecking=no' ubuntu@84.252.140.88",
      "10.0.2.29",
    ]
  },
  {
    "prod1" = [
      "ssh -o 'StrictHostKeyChecking=no' ubuntu@51.250.2.101",
      "10.0.1.30",
    ]
  },
]
```
2. Напишите выражение в terraform console, которое позволит вычленить строку "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117" из этой переменной.


### Задание 9*

Используя инструкцию https://cloud.yandex.ru/ru/docs/vpc/operations/create-nat-gateway#tf_1, настройте для ваших ВМ nat_gateway. Для проверки уберите внешний IP адрес (nat=false) у ваших ВМ и проверьте доступ в интернет с ВМ, подключившись к ней через serial console. Для подключения предварительно через ssh измените пароль пользователя: ```sudo passwd ubuntu```

### Правила приёма работыДля подключения предварительно через ssh измените пароль пользователя: sudo passwd ubuntu
В качестве результата прикрепите ссылку на MD файл с описанием выполненой работы в вашем репозитории. Так же в репозитории должен присутсвовать ваш финальный код проекта.

**Важно. Удалите все созданные ресурсы**.
