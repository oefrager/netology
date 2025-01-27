Проверяем наличие Terraform в системе:

![изображение](https://github.com/user-attachments/assets/462e6b45-d99b-49e9-98ba-4bb5084f03aa)

## Задание 1
Согласно файлу .gitignore допускается хранить секретные данные в файле personal.auto.tfvarsфайле.

Инициализируем каталог командой ```terrafrom init```, выполняем код и получаем файл ```terraform.tfstate```. Находим в нем секретные данные:

![изображение](https://github.com/user-attachments/assets/25120e8a-a3c3-4a40-86ce-594556781ec7)

Раскомментируем блок кода в файла main.tf. Проверяем командой ```terraform validate``` и видим ошибки:
  1. Название блока должно содержать 2 значения
  2. Имя ```1nginx``` должно начмнать с буквы
  3. Лишние сиволы в строке и заглавная буква.

![Снимок экрана от 2025-01-27 16-26-12](https://github.com/user-attachments/assets/619e865c-f214-44d3-815c-40cfb10f89dd)

Исправляем код 
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

Меняем имя контейнера на ```hello_world``` 
```   
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "hello_world"
```

с помощью ```terraform apply -auto-approve```  получаем:
![изображение](https://github.com/user-attachments/assets/abc80e2a-bb26-4056-b791-a5e11b4bd567)

Ключ ```-auto-approve``` отключает режим подтверждения изменений. Что грозит удалением инфраструктуры или применением изменений на лету. Допустим на тестовых сценариях.


## Задание 2*

## Задание 3*
