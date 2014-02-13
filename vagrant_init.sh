#! /bin/bash

HOME="/home/vagrant"
sudo apt-get update
sudo apt-get install -y git tree vim whois git-review python-pip
sudo pip install mock
sudo pip install tox flake8

cd $HOME
git clone https://github.com/openstack-dev/devstack.git
cd devstack
sudo cp /vagrant/localrc .
./stack.sh

cd /opt/stack/neutron
git remote add gerrit ssh://rossella-o@review.openstack.org:29418/openstack/neutron.git

cd $HOME
git clone https://github.com/rossella/dotfiles.git

cd $HOME/dotfiles/script
sh bootstrap
