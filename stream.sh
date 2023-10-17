#!/bin/bash

yt-dlp -o - $FROM_URL | \
  ffmpeg -re -i - \
  -c:v libx264 -preset veryfast -b:v 3000k -maxrate 3000k -bufsize 6000k \
  -framerate 25 -video_size 1280x720 -vf "format=yuv420p" -g 50 -strict experimental \
  -c:a aac -b:a 128k -ar 44100 -f flv $STREAM_URL$STREAM_KEY
