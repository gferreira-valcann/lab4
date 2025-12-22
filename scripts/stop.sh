#!/bin/bash
#nomeApp="lab4-app"

#sudo supervisorctl stop $nomeApp
set +e

supervisorctl stop lab4-app || true

exit 0
