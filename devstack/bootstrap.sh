!/usr/bin/env bash

# Install base tools
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y wget
sudo apt-get install -y python-pip
sudo apt-get install -y python-dev
#sudo apt-get install -y libxml2-dev libxslt-dev
sudo pip install netifaces
sudo pip install --upgrade routes

# Download icehouse stable devstack
git clone -b stable/icehouse https://github.com/openstack-dev/devstack.git
cd devstack
wget https://github.com/smakam/openstack/raw/master/localrc_control
cp localrc_control localrc

