#!/usr/bin/env bash

echo "# IPv4 and IPv6 localhost aliases:" | sudo tee /etc/hosts
echo "127.0.0.1 vagrant-ubuntu-20.test vagrant-ubuntu-20.test localhost" | sudo tee -a /etc/hosts
echo "::1       vagrant-ubuntu-20.test vagrant-ubuntu-20.test localhost" | sudo tee -a /etc/hosts
echo "10.0.2.22 vagrant-ubuntu-20.test vagrant-ubuntu-20.test localhost" | sudo tee -a /etc/hosts

# Update packages:
apt-get update
sudo apt-get upgrade

# Install nmap:
sudo apt-get install -y nmap

# Add DNS to /etc/resolv.conf
echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolv.conf
echo "nameserver 8.8.4.4" | sudo tee -a /etc/resolv.conf

# Install git:
sudo apt-get install -y git

# Install zip:
sudo apt-get install -y zip unzip

# Apache install:
sudo apt-get install -y apache2

# Install PHP:
sudo apt-get install -y php
sudo apt-get install -y php-curl
sudo apt-get install -y php-gd
sudo apt-get install -y php-bcmath
sudo apt-get install -y php-dev # This library required to compile PHP modules.

# Install composer:
cd /tmp/
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Install node (latest version v17.7.1) and npm (latest version 8.5.2):
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install firebase tools (latest version 10.2.2):
sudo npm install -g firebase-tools

# Check versions:
node -v
npm -v
firebase -V
php -v




