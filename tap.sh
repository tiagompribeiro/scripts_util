#!/bin/bash
#		Run on sudo su	ROOT needed
# como correr ???? tcpreplay
#
#	-i interface
#	-
#

helpFunction()
{
   	echo ""
   	echo "Usage: ./tap name  ex tap0"
	echo ""
	exit 1 # Exit script after printing help
}


# Print helpFunction in case parameters are empty
if [ -z "$1" ]
then
	echo "";
   	echo "Some or all of the parameters are empty";
   	helpFunction
fi

sudo tunctl -t $1
sudo ifconfig $1 172.16.0.1 netmask 255.255.255.0 up
sudo ifconfig $1 up
