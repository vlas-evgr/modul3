sudo apt-get install tcpdump -y
**Нужен файл ipsec.conf**
sudo cp /down/hq-ipsec.conf /etc/strongswan/ipsec.conf -y
sudo echo "10.5.5.1 10.5.5.2 :PSK "P@ssw0rd"" >> /etc/strongswan/ipsec.secrets
sudo systemctl enable –-now strongswan
sudo systemctl enable –-now strongswan-starter
echo "PROVERKA=sudo tcpdump -i tun -n -p icmp"