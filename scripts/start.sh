#!/bin/bash

set -e

APP_DIR=/home/ubuntu/lab4
APP_NAME=lab4-app

cd $APP_DIR

# install dependencies as ubuntu user
sudo -u ubuntu npm install --production

# reload supervisor configs
sudo supervisorctl reread
sudo supervisorctl update

# restart app safely
if sudo supervisorctl status | grep -q "$APP_NAME.*RUNNING"; then
  sudo supervisorctl restart $APP_NAME
else
  sudo supervisorctl start $APP_NAME
fi


#nomeApp="lab4-app"
#cd ../
#npm install

#sudo supervisord
#sudo supervisorctl start $nomeApp
