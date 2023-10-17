# YouTube live radio sample

Have you ever come across a YouTube video that endlessly loops a playlist of music? This post outlines a way to launch such a live radio using `ffmpeg`, the swiss army knife when it comes to any kind of media streaming or transformation, and a simple Docker image. You can even host the entire setup for free on services like Heroku (using "free" dyno hours). More information can be found in [this blog post](https://blaubart.com/en/blog/how-to-set-up-a-24-7-live-stream-radio-on-youtube-for-free).

# Docker

This service ready to docker-compose. 
1. You need build service by command:

```bash
docker build -t youtube-stream .
```
2. Change YOUTUBE_KEY, STREAM_KEY, STREAM_URL in docker-compose.yaml
3. And service up by:

```bash
docker-compose up -d
```
