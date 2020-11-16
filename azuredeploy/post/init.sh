#!/bin/bash

apt-get update

apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get install curl python-software-properties

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 656408E390CFB1F5

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list

apt-get update

apt-get install nodejs

apt-get install mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-mongos mongodb-org-tools

apt-get install docker-ce

apt-get upgrade

systemctl enable mongod.service

systemctl start mongod.service

npm install -g @angular/cli

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
