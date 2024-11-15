#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo curl -L "https://github.com/docker/compose/releases/download/2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

echo "Docker и Docker Compose успешно установлены!"


echo "Поднимаем Traefik и Portainer"
./up.sh
echo "Traefik и Portainer должны были запуститься"
