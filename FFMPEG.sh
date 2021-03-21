audiobitrate=$(jq -r ".configs[0] | .audiobitrate" $(pwd)/$(jq -r ".configs[0] | .selection" main-config.json))
horizontalresolution="$(jq ".configs[0] | .horizontalresolution" $(pwd)/$(jq -r ".configs[0] | .selection" main-config.json))"
verticalresolution="$(jq ".configs[0] | .verticalresolution" $(pwd)/$(jq -r ".configs[0] | .selection" main-config.json))"
crf="$(jq ".configs[0] | .quality" $(pwd)/$(jq -r ".configs[0] | .selection" main-config.json))"
ffmpeg -i "${1}" -b:a "$audiobitrate" -c:v libx264 -vf scale="$horizontalresolution":"$verticalresolution" -preset "$(jq -r ".configs[0] | .preset" $config)" -crf "$crf" -fs "$(jq -r ".configs[0] | .size" $config)" "${1}"compressed.mp4