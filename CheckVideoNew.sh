#!/bin/bash
videoname=$(basename $1)
videochannel=$(dirname $1)

link_newer_than(){
	videotimestamp=$(date -d $(echo $videoname | cut -c1-8) +%s)
	currenttimestamp=$(date +%s)
	videoage=$(($currenttimestamp-videotimestamp))
	agelimit=$(($1*604800))
	if [ "$videoage" -lt "$agelimit" ]
	then
		echo "Adding $videoname by $videochannel to NewVideos"
		videonamefinal=$(echo $videoname | cut -c1-8)_$(echo $videochannel | cut -c 3-)_$(echo $videoname | cut -c 9-)
		ln $videochannel/$videoname $HOME/cloud/.yt-dlp_files/NewVideos/$videonamefinal
	fi	
} 

link_newer_than 6
