sudo apt-get install fail2ban python3-module-systemd -y
sudo touch /var/log/auth.log
sudo systemctl restart sshd
sudo systemctl restart network
**Нужен файл jail.conf**
sudo /down/jail.conf /etc/fail2ban/ -y
sudo systemctl enable --now fail2ban
sudo echo "s rtr podkl k hq-srv cherez"
sudo echo "ssh vmesto parolya enter"
sudo echo "potom proverka na hq-srv komandoy"
sudo echo "sudo fail2ban-client status sshd"