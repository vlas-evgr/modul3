**Нужен файл 00_common.conf**
sudo cp /down/00_common.conf /etc/rsyslog.d/ -y
sudo systemctl enable --now rsyslog
