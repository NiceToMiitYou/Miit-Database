#!/bin/bash

echo "Provisioning virtual machine..."

# Configure Shell
export DEBIAN_FRONTEND=noninteractive 
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Configure Language
locale-gen en_US.UTF-8      
dpkg-reconfigure locales    

# MongoDB 
echo "Installing MongoDB..."
apt-get install mongodb-server -y

echo "Configuring MongoDB..."
sed -i 's/bind_ip = 127.0.0.1/bind_ip = 0.0.0.0/g' /etc/mongodb.conf

service mongod restart

echo "Finished provisioning."
