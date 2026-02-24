sudo echo "Nomer2"
sudo apt-get install openssl ca-certificate -y
sudo mkdir -p /etc/pki/CA
sudo mkdir -p /etc/pki/CA/private
sudo mkdir -p /etc/pki/CA/certs
sudo mkdir -p /etc/pki/CA/newcerts
sudo mkdir -p /etc/pki/CA/crl
sudo touch /etc/pki/CA/index.txt
sudo echo 1000 > /etc/pki/CA/serial
sudo chmod 700 /etc/pki/CA/private
sudo openssl req -x509 -new -nodes -keyout /etc/pki/CA/private/ca.key -out /etc/pki/CA/certs/ca.crt -days 3650 -sha256 -subj "/CN=AU-TEAM Root CA"
sudo openssl genrsa -out /etc/pki/CA/private/web.au-team.irpo.key 2048
sudo openssl genrsa -out /etc/pki/CA/private/docker.au-team.irpo.key 2048
sudo openssl req -new -key /etc/pki/CA/private/web.au-team.irpo.key -out /etc/pki/CA/newcerts/web.au-team.irpo.crs -subj "/CN=web.au-team.irpo"
sudo openssl req -new -key /etc/pki/CA/private/docker.au-team.irpo.key -out /etc/pki/CA/newcerts/docker.au-team.irpo.crs -subj "/CN=docker-team.irpo"
sudo mkdir -p /etc/ssl
sudo cp /down/web.cnf /etc/ssl/ -y
sudo openssl ca -config /etc/ssl/web.cnf -in /etc/pki/CA/newcerts/web.au-team.irpo.csr -out /etc/pki/CA/certs/web.au-team.irpo.crt -extensions server_cert -batch
sudo openssl ca -config /etc/ssl/web.cnf -in /etc/pki/CA/newcerts/docker.au-team.irpo.csr -out /etc/pki/CA/certs/docker.au-team.irpo.crt -extensions server_cert -batch
sudo cp /etc/pki/CA/certs/ca.crt /raid/nfs
sudo cp /etc/pki/CA/certs/web.au-team.irpo.crt /raid/nfs
sudo cp /etc/pki/CA/private/web.au-team.irpo.key /raid/nfs
sudo cp /etc/pki/CA/certs/docker.au-team.irpo.crt /raid/nfs
sudo cp /etc/pki/CA/private/docker.au-team.irpo.key /raid/nfs
sudo chmod 777 /raid/nfs/web.au-team.irpo.key
sudo chmod 777 /raid/nfs/docker.au-team.irpo.key
sudo echo "Na hq-cli v terminale roota pishem 2 commands"
sudo echo "cp /mnt/nfs/ca.crt /etc/pki/ca-trust/source/anchors"
sudo echo "update-ca-trust"
sudo echo "Zatem"
sudo echo "Na hq-cli podkl 4erez ssh k isp u bash m3-isp-2.sh"