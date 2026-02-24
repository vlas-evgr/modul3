sudo cp /down/hosts /etc/ansible -y
**Нужен файл hosts**
sudo echo "nameserver 192.168.0.1" >> /etc/resolv.conf
sudo ansible all -m ping
sudo mount /dev/sr0 /mnt
**Нужен файл get_hostname_address.yml**
sudo cp /down/get_hostname_address.yml /etc/ansible/ -y
sudo mkdir /etc/ansible/PC-info/
sudo ansible-playbook etc/ansible/get_hostname_address.yml
