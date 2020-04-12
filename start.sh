chmod +x crawlergo
chmod +x xray_linux_amd64 
nohup python3 -u serverjiang.py > logs/serverjiang.log 2>&1 &
nohup ./xray_linux_amd64 webscan --listen 127.0.0.1:7777 --webhook-output http://127.0.0.1:2333/webhook > logs/xray.log 2>&1 &
nohup python3 -u launcher.py > logs/launcher.log 2>&1 &
