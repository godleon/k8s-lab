#!/bin/bash

# install docker
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce

sudo docker run --rm -v $(pwd):/k8s-lab williamyeh/ansible:ubuntu16.04 bash -c "cd /k8s-lab; ./install.sh"
