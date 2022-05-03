#!/usr/bin/env bash

echo " ************ START: POST INTALL START ************ "

# 3ks permission
sudo chmod 644 /etc/rancher/k3s/k3s.yaml

# Add vagrant user to docker group
sudo usermod -aG docker vagrant

# Start docker
sudo systemctl start docker

echo " ************ FINISHED ************ "
