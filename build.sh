#!/bin/bash

SCALE=-vf\ "scale=720x405"

# Target bitrate (-b:v): 7.5 Mbps (about 75% of maxrate)
# Maximum bitrate (-maxrate): 10 Mbps
# Buffer size (-bufsize): 20 Mbps (2x maxrate)
# Audio bitrate remains at 192kbps
# QUALITY=-b:v\ 7500k\ -maxrate\ 10000k\ -bufsize\ 20000k\ -b:a\ 192k

# Target 5
# Max 7
# Bufer size 14, (which is 2x max)
QUALITY=-b:v\ 5000k\ -maxrate\ 7000k\ -bufsize\ 14000k\ -b:a\ 192k

# Create outputs directory if it doesn't exist
mkdir -p outputs

# Get the filename without extension
BASENAME=$(basename "${VIDIN%.*}")

# Quote VIDIN in ffmpeg commands
ffmpeg -i "${VIDIN}" ${SCALE} ${QUALITY} -movflags faststart -c:v mpeg4 -c:a mp3 UNCHAPTER_mpeg4.mp4

rm -f FFMETADATAFILE
ffmpeg -i UNCHAPTER_mpeg4.mp4 -f ffmetadata FFMETADATAFILE

# Get duration in seconds and pass to genchapters.py
DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "UNCHAPTER_mpeg4.mp4")
echo "Video duration: ${DURATION} seconds"

python3 genchapters.py "${DURATION}"

ffmpeg -i UNCHAPTER_mpeg4.mp4 -i FFMETADATAFILE -map_metadata 1 -movflags faststart -codec copy "outputs/${BASENAME}.mp4"
