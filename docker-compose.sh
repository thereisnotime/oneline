#!/bin/bash
cd $(mktemp -d) 
_version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose
docker-compose