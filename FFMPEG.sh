ffmpeg -i ${1} -b:a 96k -c:v libx264 -vf scale=1280:720 -preset slow -fs "$(jq ".configs[0] | .size"  test.json)" ${1}compressed-8mb.mp4