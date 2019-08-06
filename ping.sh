ip=10.0.111.
for i in `seq 1 255`
do
	ping  -c 1 -i 0.01 $ip$i > /dev/null
	if [ $? -eq 0 ];then
	echo	'123'
	else 
	echo	'222'
	fi
	
done
