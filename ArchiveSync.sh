$HOME/cloud/.yt-dlp_files/yt-dlp -i -f "bestvideo[ext=mp4][height<=1080]+bestaudio[ext=m4a]/best[ext=mp4][height<=1080]/best" --dateafter today-8weeks --download-archive "$HOME/cloud/.yt-dlp_files/archive.txt" --limit-rate 3M -o "$HOME/cloud/YouTube Videos/%(channel)s/%(upload_date)s-%(title)s.%(ext)s" --restrict-filenames -c --prefer-free-formats --embed-subs --embed-thumbnail --embed-chapters --break-per-input --break-on-reject --batch-file "$HOME/cloud/.yt-dlp_files/channels.txt"
