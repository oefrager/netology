### Чек-лист готовности к домашнему заданию
Проверяем наличие Terraform в системе:

![изображение](https://github.com/user-attachments/assets/462e6b45-d99b-49e9-98ba-4bb5084f03aa)

## Задание 1
2. Согласно файлу .gitignore допускается хранить секретные данные в файле personal.auto.tfvarsфайле.

3. Инициализируем каталог командой ```terrafrom init```, выполняем код и получаем файл ```terraform.tfstate```. Находим в нем секретные данные:
![изображение](https://github.com/user-attachments/assets/25120e8a-a3c3-4a40-86ce-594556781ec7)

4. Раскомментируем блок кода в файла main.tf. Проверяем командой ```terraform validate``` и видим ошибки:
  a. Название блока должно содержать 2 значения
  b. Имя ```1nginx``` должно начмнать с буквы
  c. Лишние символы в строке и заглавная буква.

![Снимок экрана от 2025-01-27 16-26-12](https://github.com/user-attachments/assets/619e865c-f214-44d3-815c-40cfb10f89dd)

5. Исправляем код:
```   
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "example_${random_password.random_string.result}"
```
и получаем:
![изображение](https://github.com/user-attachments/assets/916ce30b-1554-42a2-a310-5a252dfa3859)

6. Меняем имя контейнера на ```hello_world``` 
```   
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "hello_world"
```
с помощью ```terraform apply -auto-approve```  получаем:

![изображение](https://github.com/user-attachments/assets/abc80e2a-bb26-4056-b791-a5e11b4bd567)

Ключ ```-auto-approve``` отключает режим подтверждения изменений. Что грозит удалением инфраструктуры или применением изменений на лету. Допустим на тестовых сценариях.

7. Уничтожьте созданные ресурсы с помощью ```terraform destroy```. Содержимое файла terraform.tfstate:

   ![изображение](https://github.com/user-attachments/assets/1179dfa4-5653-4573-8dad-fa873dbd6da7)

9. docker-образ nginx:latest не был удалён из-за строчки кода```keep_locally = true```

![image](https://github.com/user-attachments/assets/8b5ccd94-d30d-4765-989a-631a59ca09b1)


## Задание 2*
1. Создаем в облаке ВМ.
2. Подключаемсяь к ВМ по ssh и установите стек docker.
    Найдите в документации docker provider способ настроить подключение terraform на вашей рабочей станции к remote docker context вашей ВМ через ssh.
    Используя terraform и remote docker context, скачайте и запустите на вашей ВМ контейнер mysql:8 на порту 127.0.0.1:3306, передайте ENV-переменные. Сгенерируйте разные пароли через random_password и передайте их в контейнер, используя интерполяцию из примера с nginx.(name  = "example_${random_password.random_string.result}" , двойные кавычки и фигурные скобки обязательны!)

    environment:
      - "MYSQL_ROOT_PASSWORD=${...}"
      - MYSQL_DATABASE=wordpress
      - MYSQL_USER=wordpress
      - "MYSQL_PASSWORD=${...}"
      - MYSQL_ROOT_HOST="%"

    Зайдите на вашу ВМ , подключитесь к контейнеру и проверьте наличие секретных env-переменных с помощью команды env. Запишите ваш финальный код в репозиторий.

## Задание 3*
1. Установливаем opentofu (v1.9.0).
2. Запускаем код с помощью ```tofu apply```.
