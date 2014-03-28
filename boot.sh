#! /bin/bash

HOME="/home/vagrant"
cd $HOME
git clone https://github.com/openstack-dev/devstack.git
cd devstack
sudo cp /vagrant/localrc .
./stack.sh

cd /opt/stack/neutron
git remote add gerrit ssh://rossella-o@review.openstack.org:29418/openstack/neutron.git
git remote add rossella git@github.com:rossella/neutron.git
cd $HOME
git clone https://github.com/rossella/dotfiles.git

cd $HOME/dotfiles/script
sh bootstrap

