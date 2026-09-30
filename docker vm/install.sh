#!/bin/bash

apt-get update -y

apt-get install -y docker.io

systemctl enable docker
systemctl start docker

# Install Docker Compose plugin
apt-get install -y docker-compose-v2

# Allow the VM user to run Docker
usermod -aG docker azureadmin

echo "Docker installation completed"
docker --version
docker compose version