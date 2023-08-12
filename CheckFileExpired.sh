#!/bin/bash
videoname=$(basename $1)
videochannel=$(dirname $1)

delete_older_than(){
	videotimestamp=$(date -d $(echo $videoname | cut -c1-8) +%s)
	currenttimestamp=$(date +%s)
	videoage=$(($currenttimestamp-videotimestamp))
	agelimit=$(($1*604800))
	if [ "$videoage" -ge "$agelimit" ]
	then
		echo "$videoname is expired, deleting"
		rm $videochannel/$videoname
	fi	
}

case $videochannel in

	"./Benn_Jordan")
		delete_older_than 8
		;;

	"./HAINBACH")
		delete_older_than 8
		;;
	
	"./Venus_Theory")
		delete_older_than 8
		;;

	"./Adam Neely")
		delete_older_than 8
		;;

	"./ANDREW HUANG")
		delete_older_than 8
		;;

	"./Rob Scallon")
		delete_older_than 8
		;;

	"./Garbaj")
		delete_older_than 8
		;;
esac
