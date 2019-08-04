#!/usr/bin/env bash

# Add directory for global npm installations
mkdir ~/.npm-global

npm config set prefix '~/.npm-global'

echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.bashrc

npm install pm2 -g