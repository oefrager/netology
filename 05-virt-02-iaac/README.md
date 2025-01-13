## Задача 1

Установите на личный Linux-компьютер или учебную локальную ВМ с Linux следующие сервисы(желательно ОС ubuntu 20.04):

    VirtualBox,
    Vagrant, рекомендуем версию 2.3.4
    Packer версии 1.9.х + плагин от Яндекс Облако по инструкции
    уandex cloud cli Так же инициализируйте профиль с помощью yc init .

Примечание: Облачная ВМ с Linux в данной задаче не подойдёт из-за ограничений облачного провайдера. У вас просто не установится virtualbox.
## Задача 2

    Убедитесь, что у вас есть ssh ключ в ОС или создайте его с помощью команды ssh-keygen -t ed25519
    Создайте виртуальную машину Virtualbox с помощью Vagrant и Vagrantfile в директории src.
    Зайдите внутрь ВМ и убедитесь, что Docker установлен с помощью команды:

docker version && docker compose version

    Если Vagrant выдаёт ошибку (блокировка трафика):

URL: ["https://vagrantcloud.com/bento/ubuntu-20.04"]     
Error: The requested URL returned error: 404:

Выполните следующие действия:

    Скачайте с сайта файл-образ "bento/ubuntu-20.04".
    Добавьте его в список образов Vagrant: "vagrant box add bento/ubuntu-20.04 <путь к файлу>".

Важно:

    Если ваша хостовая рабочая станция - это windows ОС, то у вас могут возникнуть проблемы со вложенной виртуализацией. Ознакомиться со cпособами решения можно по ссылке.

    Если вы устанавливали hyper-v или docker desktop, то все равно может возникать ошибка:
    Stderr: VBoxManage: error: AMD-V VT-X is not available (VERR_SVM_NO_SVM)
    Попробуйте в этом случае выполнить в Windows от администратора команду bcdedit /set hypervisorlaunchtype off и перезагрузиться.

    Если ваша рабочая станция в меру различных факторов не может запустить вложенную виртуализацию - допускается неполное выполнение(до ошибки запуска ВМ)

## Задача 3

    Отредактируйте файл mydebian.json.pkr.hcl или mydebian.jsonl в директории src (packer умеет и в json, и в hcl форматы):
        добавьте в скрипт установку docker. Возьмите скрипт установки для debian из документации к docker,
        дополнительно установите в данном образе htop и tmux.(не забудьте про ключ автоматического подтверждения установки для apt)
    Найдите свой образ в web консоли yandex_cloud
    Необязательное задание(*): найдите в документации yandex cloud как найти свой образ с помощью утилиты командной строки "yc cli".
    Создайте новую ВМ (минимальные параметры) в облаке, используя данный образ.
    Подключитесь по ssh и убедитесь в наличии установленного docker.
    Удалите ВМ и образ.
    ВНИМАНИЕ! Никогда не выкладываете oauth token от облака в git-репозиторий! Утечка секретного токена может привести к финансовым потерям. После выполнения задания обязательно удалите секретные данные из файла mydebian.json и mydebian.json.pkr.hcl. (замените содержимое токена на "ххххх")
    В качестве ответа на задание загрузите результирующий файл в ваш ЛК.




## $ vagrant ssh

Welcome to Ubuntu 24.04 LTS (GNU/Linux 6.8.0-31-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Wed Dec 25 12:24:05 PM UTC 2024

  System load:  0.0                Processes:             128
  Usage of /:   12.8% of 30.34GB   Users logged in:       0
  Memory usage: 21%                IPv4 address for eth0: 10.0.2.15
  Swap usage:   0%


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento

Use of this system is acceptance of the OS vendor EULA and License Agreements.
Last login: Wed Dec 25 12:21:40 2024 from 10.0.2.2

vagrant@server1:~$ cat /etc/*release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=24.04
DISTRIB_CODENAME=noble
DISTRIB_DESCRIPTION="Ubuntu 24.04 LTS"
PRETTY_NAME="Ubuntu 24.04 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo

vagrant@server1:~$ ip a | grep inet | grep 19
    inet 192.168.56.11/24 brd 192.168.56.255 scope global eth1

vagrant@server1:~$ free
               total        used        free      shared  buff/cache   available
Mem:          984828      335876      205888        1012      597248      648952
Swap:        2097148          12     2097136

vagrant@server1:~$ hostname -f
server1.netology






$ vagrant halt
==> server1.netology: Attempting graceful shutdown of VM...
vagrant status

$ vagrant status
Current machine states:

server1.netology          poweroff (virtualbox)

The VM is powered off. To restart the VM, simply run `vagrant up`

$ vagrant box list
bento/ubuntu-24.04 (virtualbox, 1.0.0)
ubuntu/focal64     (virtualbox, 1.0.0)

$ vagrant destroy
    server1.netology: Are you sure you want to destroy the 'server1.netology' VM? [y/N] y
==> server1.netology: Destroying VM and associated drives...

$ vagrant box list
bento/ubuntu-24.04 (virtualbox, 1.0.0)
ubuntu/focal64     (virtualbox, 1.0.0)
