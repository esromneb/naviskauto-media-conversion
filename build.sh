#!/bin/bash

SCALE=-vf\ "scale=720x405"

# Target bitrate (-b:v): 7.5 Mbps
# Maximum bitrate (-maxrate): 10 Mbps
# Buffer size (-bufsize): 20 Mbps (2x maxrate)
# Audio bitrate remains at 192kbps
# QUALITY=-b:v\ 7500k\ -maxrate\ 10000k\ -bufsize\ 20000k\ -b:a\ 192k

# Target 6
# Max 8
# Bufer size 16, 2x max
QUALITY=-b:v\ 6000k\ -maxrate\ 8000k\ -bufsize\ 16000k\ -b:a\ 192k

ffmpeg -i ${VIDIN} ${SCALE}  ${QUALITY} -movflags faststart -c:v mpeg4 -c:a mp3 UNCHAPTER_mpeg4.mp4

rm -f FFMETADATAFILE
ffmpeg -i UNCHAPTER_mpeg4.mp4 -f ffmetadata FFMETADATAFILE

# Get duration in seconds and pass to genchapters.py
DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 UNCHAPTER_mpeg4.mp4)
echo "Video duration: ${DURATION} seconds"

python3 genchapters.py "${DURATION}"

ffmpeg -i UNCHAPTER_mpeg4.mp4 -i FFMETADATAFILE -map_metadata 1 -movflags faststart -codec copy output_mpeg4.mp4
