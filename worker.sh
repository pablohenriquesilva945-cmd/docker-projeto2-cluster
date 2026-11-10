  #!/bin/bash
echo "Instalando o Docker no Worker..."
curl -fsSL https://get.docker.com | sh

echo "Ingressando no cluster Docker Swarm..."
# Lê o token gerado pelo master
TOKEN=$(cat /vagrant/worker.sh.token)

docker swarm join --token $TOKEN 192.168.56.10:2377

echo "Worker configurado e ingressado com sucesso!"
