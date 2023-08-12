#!/bin/bash
cd $HOME/cloud/.yt-dlp_files/
# curl -H "Title: persephone" -d "Starting YouTube Library Sync" ntfy.sh/chedntfy13131
starttime=$(date +%s)
./ArchiveSync.sh
./DeleteOldVideos.sh
./SyncNewVideosFolder.sh
endtime=$(date +%s)
curl -H "Title: persephone" -d "Finished Library sync in $(($endtime-$starttime)) seconds" ntfy.sh/chedntfy13131

