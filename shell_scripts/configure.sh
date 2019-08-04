#!/usr/bin/env bash

yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sudo yum install nodejs -y

cd /var/www/app; npm install