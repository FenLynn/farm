#! /bin/bash
#vim /root/ssh_deny/ssh_deny.sh
tail -n 200 /var/log/messages |awk '/Failed/{print $(NF-3)}'|sort|uniq -c|awk '{print $2"="$1;}'  >/root/ssh_deny/black.txt
DEFINE="20"
for i in `cat  /root/ssh_deny/black.txt`
do
	IP=`echo $i |awk -F= '{print $1}'`
	NUM=`echo $i|awk -F= '{print $2}'`
	if [ $NUM -gt $DEFINE ];
	then
		grep $IP /etc/hosts.deny > /dev/null
		if [ $? -gt 0 ];
		then
			echo "sshd:$IP" >> /etc/hosts.deny
			echo $IP `date` >> /root/ssh_deny/ssh_deny.log
		fi
	fi
done
#vim /etc/crontab 
#* */1 * * * root sh /root/ssh_deny.sh
