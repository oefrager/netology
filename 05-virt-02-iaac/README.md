$ vagrant ssh

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
