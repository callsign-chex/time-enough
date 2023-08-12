#!/bin/bash
cd "$HOME/cloud/YouTube Videos"
find . -type f -exec sh -c '$HOME/cloud/.yt-dlp_files/CheckFileExpired.sh {}' \;
