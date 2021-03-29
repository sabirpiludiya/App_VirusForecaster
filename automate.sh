##!/bin/bash
cd /home/azureuser/python-app/App_VirusForecaster
git pull && echo "pull completed"
sleep 2s
source /home/azureuser/python-app/App_VirusForecaster/env/bin/activate
echo "Killing service . . ."
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
sudo fuser -n tcp -k 5000
pm2 stop run.py
sleep 5s
echo "restarting service . . ."
pm2 start run.py
echo "Deployment done...Thanks!"
