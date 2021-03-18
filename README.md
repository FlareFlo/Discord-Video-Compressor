# Discord-Video-Compressor
 A script based on FFMPEG running through WSL, which compresses videos for targeted filesize (discord presets included)
 
 Requirements;
 WSL with:
 `sudo apt install ffmpeg`
 `sudo apt install jq`
 
 Usage;
 Drag and drop video file (all FFMPEG supported ones) onto the corresponding batch file and wait for FFMPEG conversion to happen.

Configuring the values in the config;    
"size" This value sets the maximum file-size the output video may have, such as 8M representing 8 Megabytes.
"quality" The general quality the video will retain, 0 being practically lossless, 17 visually lossless and anything higher slowly worsening.  
"audiobitrate" Defines the bitrate the audio runs at
"vertical/horizontalresolution" Self explanatory, defaults to 720p 16:9
"preset" At what speed the program will compress the video, has a considerable impact on compression efficiency

