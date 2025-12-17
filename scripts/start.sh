#!/bin/bash
nomeApp="lab4-app"
cd ../
npm install

sudo supervisord
sudo supervisorctl start $nomeApp
