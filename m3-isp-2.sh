sudo mkdir -p /etc/nginx/ssl
sudo scp -P 2026 sshuser@172.16.1.1:/raid/nfs/web.au-team.irpo.crt /etc/nginx/ssl/
sudo scp -P 2026 sshuser@172.16.1.1:/raid/nfs/docker.au-team.irpo.crt /etc/nginx/ssl/
sudo scp -P 2026 sshuser@172.16.1.1:/raid/nfs/web.au-team.irpo.key /etc/nginx/ssl/
sudo scp -P 2026 sshuser@172.16.1.1:/raid/nfs/docker.au-team.irpo.key /etc/nginx/ssl/
***Нужен файл нгинкса ***
sudo echo "V https://web.au-team.irpo l:WEB P:P@ssw0rd"
sudo echo "V https://docker.au-team.irpo"
sudo echo "esli site ne red to vse good i 2 zadanie sdelano"