#!/bin/bash
echo "Instalando o Docker no Master..."
curl -fsSL https://get.docker.com | sh

echo "Iniciando o cluster Docker Swarm..."
docker swarm init --advertise-addr=192.168.56.10

echo "Exportando o token do worker para a pasta compartilhada (/vagrant)..."
docker swarm join-token worker -q > /vagrant/worker.sh.token

echo "Master configurado com sucesso!"
