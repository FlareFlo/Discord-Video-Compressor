audiobitrate="$(jq ".configs[0] | .audiobitrate" config.json)"
horizontalresolution="$(jq ".configs[0] | .horizontalresolution" config.json)"
verticalresolution="$(jq ".configs[0] | .verticalresolution" config.json)"
crf="$(jq ".configs[0] | .quality" config.json)"
ffmpeg -i "${1}" -b:a "$audiobitrate" -c:v libx264 -vf scale="$horizontalresolution":"$verticalresolution" -preset "$(jq -r ".configs[0] | .preset" config.json)" -crf $crf -fs "$(jq -r ".configs[0] | .size" config.json)" "${1}"compressed.mp4