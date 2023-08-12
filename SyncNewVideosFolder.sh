#!/bin/bash
cd "$HOME/cloud/YouTube Videos"
echo "Checking for new videos in $PWD"
find . -type f -exec sh -c '$HOME/cloud/.yt-dlp_files/CheckVideoNew.sh {}' \;

cd "$HOME/cloud/.yt-dlp_files/NewVideos"
echo "Checking for old symlinks in $PWD"
find . -type f -exec sh -c '$HOME/cloud/.yt-dlp_files/CheckSymlinkOld.sh {}' \;
rm *.json
