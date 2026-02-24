sudo apt-get install cups cups-pdf -y
**Нужен файл cups.conf**
sudo cp /down/cups.conf /etc/cups/cups.conf -y
sudo systemctl restart cups
sudo echo "https://hq-srv.au-team.irpo:631 Administrirovanie L=root P=toor"