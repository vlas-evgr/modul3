sudo apt-get install rsyslog tree -y
**Нужен файл 00_common.conf**
sudo cp /down/00_common.conf /etc/rsyslog.d/ -y
sudo systemctl enable --now rsyslog
sudo mkdir -p /opt/br-rtr
sudo mkdir -p /opt/hq-rtr
sudo mkdir -p /opt/br-srv
**Нужен файл logrotate.conf**
sudo cp /down/logrotate.conf /etc/ -y
sudo systemctl enable --now logrotate
sudo echo "Proverka=sudo logrotate -d /etc/logrotate.conf"