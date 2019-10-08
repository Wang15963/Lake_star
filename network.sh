read -p "testing network :" ip
ping -c1 -i 1 $ip > /dev/null
if [ $? -eq 0 ];then
	echo "$ip is upupup!" >> "$ip up"
elif [ $? -ne 0 ];then
	echo "$ip is downdown!" >> "$ip down"
fi
