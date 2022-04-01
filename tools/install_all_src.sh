#!/bin/bash

clear

sudo rm -fr /var/www/html/*
sudo cp -r /vagrant/src/* /var/www/html/

echo "Done"
