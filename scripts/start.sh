#!/bin/bash
nomeApp="lab4-app"
cd /appdir
npm install

sudo supervisord
sudo supervisorctl start $nomeApp
