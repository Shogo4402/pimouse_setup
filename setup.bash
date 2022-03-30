#!/bin/bash -xve

###BEGIN INIT INFO
#Defaults-Start: 2
#Defaults-Stop:
###END INIT INFO

exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
