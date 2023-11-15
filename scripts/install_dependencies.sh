#!/bin/bash

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
source ~/.bashrc
nvm install 18
nvm use 18

cd /var/acebook
npm install
npm install -g pm2
export PATH=$PATH:/opt/node/lib/node_modules/pm2/bin
source ~/.bashrc