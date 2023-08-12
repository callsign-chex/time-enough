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
		rm $videoname
	fi	
} 

delete_older_than 6

