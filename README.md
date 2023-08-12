# time-enough

Named after the Twilight Zone episode Time Enough at Last, because it seemed right at the time

## What it does 
time-enough is a set of scripts that work together to create a constantly updating archive of youtube videos. 
It gets it's list of channels to scan from a file called channels.txt, which just has youtube links to different channels.
After every update, it creates a folder of hardlinks containing all the videos released within the past 6 weeks.
This folder is able to be synced to another computer using rsync, which I do with my laptop. 

The scripts expect to be places in $HOME/cloud/.yt-dlp_files/, and since I never intended to publish it, it's hardcoded.
It will create it's archive of YouTube videos in $HOME/cloud/YouTube Videos, all sorted into folders for each channel.

## Why did I make this
When I'm eating on my own, I've often liked to watch a YouTube video while I eat. 
At my current job, I drive around a lot. When it comes time for lunch, I will probably not have wifi and I may not have data.
After getting annoyed at the YouTube app on muy phone, eventually I tried to find other ways. After a while, this seemed like the
ultimate solution to the problem. Download YouTube videos in 1080p to my server, then sync them to my laptop while I am on my
local network. It's worked great in that role.

This was never intended to be published, I'm only publishing it so people can use what they can from it if they want, or to just
have it out there. It's written entirely in bash, probably a little clumsily, paths are hardcoded, but anyone is welcome to use, 
polish, modify, or do whatever they want with this code. 

A note on yt-dlp and Ubuntu Server:
the version of yt-dlp that you can get on apt is often outdated. It generally doesn't matter, but since it did matter at one
time, I just have a binary of yt-dlp in the root of this folder. Again, it's hardcoded, but if you have yt-dlp installed on your
system, you can get rid of the $HOME/cloud/.yt-dlp_files/ part of the command just fine.
